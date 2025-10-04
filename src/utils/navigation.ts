import { readdir } from 'fs/promises';
import { join, extname, basename } from 'path';
import matter from 'gray-matter';
import { readFile } from 'fs/promises';

export interface NavigationItem {
  title: string;
  path: string;
  children?: NavigationItem[];
  order?: number;
}

export interface PageInfo {
  title: string;
  path: string;
  order?: number;
  hidden?: boolean;
}

export interface PageFrontmatter {
  title?: string;
  order?: number;
  hidden?: boolean;
}

/**
 * Generates navigation structure from the pages directory
 * Supports unlimited directory hierarchy depth
 */
export async function generateNavigation(): Promise<NavigationItem[]> {
  const pagesDir = join(process.cwd(), 'src/pages');

  try {
    return await processDirectoryRecursive(pagesDir, '');
  } catch (error) {
    console.warn('Error generating navigation:', error);
    return [];
  }
}

/**
 * Recursively processes directories to create navigation items with unlimited depth
 */
async function processDirectoryRecursive(dirPath: string, relativePath: string): Promise<NavigationItem[]> {
  try {
    const entries = await readdir(dirPath, { withFileTypes: true });
    const navigationItems: NavigationItem[] = [];

    for (const entry of entries) {
      const fullPath = join(dirPath, entry.name);
      const currentRelativePath = relativePath ? `${relativePath}/${entry.name}` : entry.name;

      if (entry.isFile() && isValidPageFile(entry.name)) {
        // Handle files
        const pageInfo = await getPageInfo(fullPath);
        if (!pageInfo.hidden) {
          navigationItems.push({
            title: pageInfo.title,
            path: getUrlPath(entry.name, relativePath),
            order: pageInfo.order
          });
        }
      } else if (entry.isDirectory()) {
        // Handle subdirectories recursively
        const children = await processDirectoryRecursive(fullPath, currentRelativePath);

        if (children.length > 0) {
          // Try to get title from info.md or index.md in the directory
          const infoFile = await getDirectoryInfo(fullPath);

          // Generate accent-less path from the actual directory structure
          const accentLessPath = generateAccentLessPath(currentRelativePath);

          navigationItems.push({
            title: infoFile?.title || formatDirectoryTitle(entry.name),
            path: `/${accentLessPath}/`,
            children: sortNavigationItems(children),
            order: infoFile?.order // Use order from info file if available
          });
        }
      }
    }

    return sortNavigationItems(navigationItems);
  } catch (error) {
    console.warn(`Error processing directory ${dirPath}:`, error);
    return [];
  }
}

/**
 * Checks if a file is a valid page file (Astro, Markdown, but not Cards or dynamic routes)
 * Cards files are processed by the Vite plugin, not as standalone pages
 */
function isValidPageFile(filename: string): boolean {
  const ext = extname(filename).toLowerCase();
  // Exclude dynamic routes and cards files
  if (filename.startsWith('[') || filename.endsWith('.cards')) {
    return false;
  }
  return ['.astro', '.md', '.mdx'].includes(ext);
}

/**
 * Gets directory information from index.md or info.md files
 */
async function getDirectoryInfo(dirPath: string): Promise<PageInfo | null> {
  try {
    const infoFiles = ['index.md', 'info.md'];

    for (const infoFile of infoFiles) {
      const infoPath = join(dirPath, infoFile);
      try {
        const content = await readFile(infoPath, 'utf-8');
        const { data: frontmatter } = matter(content);

        return {
          title: frontmatter.title,
          path: infoPath,
          order: frontmatter.order,
          hidden: frontmatter.hidden || false
        };
      } catch (error) {
        // File doesn't exist, continue to next
        continue;
      }
    }

    return null;
  } catch (error) {
    console.warn(`Error reading directory info for ${dirPath}:`, error);
    return null;
  }
}

/**
 * Removes accents from a string for URL-safe paths
 */
function removeAccents(str: string): string {
  return str
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '') // Remove combining diacritical marks
    .replace(/[^a-zA-Z0-9\s-]/g, '') // Remove special characters except spaces and hyphens
    .replace(/\s+/g, '-') // Replace spaces with hyphens
    .toLowerCase();
}

/**
 * Generates accent-less path from actual file path
 */
function generateAccentLessPath(relativePath: string): string {
  const pathParts = relativePath.split('/');
  return pathParts.map(part => removeAccents(part)).join('/');
}

/**
 * Converts filename to URL path with support for nested directories
 * Uses accent-less paths for better URL compatibility
 */
function getUrlPath(filename: string, relativePath?: string): string {
  const name = basename(filename, extname(filename));

  // Handle index files
  if (name === 'index') {
    if (relativePath) {
      return `/${generateAccentLessPath(relativePath)}/`;
    }
    return '/';
  }

  const accentLessName = removeAccents(name);
  if (relativePath) {
    return `/${generateAccentLessPath(relativePath)}/${accentLessName}`;
  }
  return `/${accentLessName}`;
}

/**
 * Formats directory name into a readable title
 */
function formatDirectoryTitle(dirName: string): string {
  return dirName
    .split('-')
    .map(word => word.charAt(0).toUpperCase() + word.slice(1))
    .join(' ');
}

/**
 * Sorts navigation items by order (if specified) then alphabetically
 */
export function sortNavigationItems(items: NavigationItem[]): NavigationItem[] {
  return items.sort((a, b) => {
    // Sort by order first (if both have order)
    if (a.order !== undefined && b.order !== undefined) {
      return a.order - b.order;
    }

    // Items with order come first
    if (a.order !== undefined && b.order === undefined) {
      return -1;
    }
    if (a.order === undefined && b.order !== undefined) {
      return 1;
    }

    // Alphabetical sort for items without order
    return a.title.localeCompare(b.title);
  });
}
/**
 * Extracts page information from a file including frontmatter
 */
async function getPageInfo(filePath: string): Promise<PageInfo> {
  try {
    const content = await readFile(filePath, 'utf-8');
    const { data: frontmatter } = matter(content);

    const filename = basename(filePath, extname(filePath));
    const fallbackTitle = generateTitleFromFilename(filename);

    return {
      title: frontmatter.title || fallbackTitle,
      path: filePath,
      order: frontmatter.order,
      hidden: frontmatter.hidden || false
    };
  } catch (error) {
    console.warn(`Error reading file ${filePath}:`, error);
    const filename = basename(filePath, extname(filePath));
    return {
      title: generateTitleFromFilename(filename),
      path: filePath,
      hidden: false
    };
  }
}

/**
 * Generates a readable title from filename
 */
export function generateTitleFromFilename(filename: string): string {
  // Handle index files
  if (filename === 'index') {
    return 'Home';
  }

  // Convert kebab-case, snake_case, and camelCase to Title Case
  return filename
    .replace(/[-_]/g, ' ')
    .replace(/([a-z])([A-Z])/g, '$1 $2')
    .split(' ')
    .map(word => word.charAt(0).toUpperCase() + word.slice(1).toLowerCase())
    .join(' ');
}

/**
 * Gets the current page path for highlighting active navigation items
 */
export function getCurrentPagePath(url: URL): string {
  let pathname = url.pathname;

  // Remove trailing slash except for root
  if (pathname !== '/' && pathname.endsWith('/')) {
    pathname = pathname.slice(0, -1);
  }

  return pathname;
}

/**
 * Checks if a navigation item or its children match the current path
 */
export function isActiveNavItem(item: NavigationItem, currentPath: string): boolean {
  // Direct match
  if (item.path === currentPath) {
    return true;
  }

  // Check children for match
  if (item.children) {
    return item.children.some(child => isActiveNavItem(child, currentPath));
  }

  return false;
}

