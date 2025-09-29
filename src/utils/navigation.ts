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
          navigationItems.push({
            title: formatDirectoryTitle(entry.name),
            path: `/${currentRelativePath}`,
            children: sortNavigationItems(children),
            order: undefined // Directories don't have order by default
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
 * Converts filename to URL path with support for nested directories
 */
function getUrlPath(filename: string, relativePath?: string): string {
  const name = basename(filename, extname(filename));

  // Handle index files
  if (name === 'index') {
    return relativePath ? `/${relativePath}/` : '/';
  }

  return relativePath ? `/${relativePath}/${name}` : `/${name}`;
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

