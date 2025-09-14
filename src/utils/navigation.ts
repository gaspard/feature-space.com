import { readdir, stat } from 'fs/promises';
import { join, extname, basename, dirname, relative } from 'path';
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
 * Supports two-level directory hierarchy
 */
export async function generateNavigation(): Promise<NavigationItem[]> {
  const pagesDir = join(process.cwd(), 'src/pages');
  const navigationItems: NavigationItem[] = [];
  
  try {
    const entries = await readdir(pagesDir, { withFileTypes: true });
    
    for (const entry of entries) {
      const fullPath = join(pagesDir, entry.name);
      
      if (entry.isFile() && isValidPageFile(entry.name)) {
        // Handle top-level files
        const pageInfo = await getPageInfo(fullPath);
        if (!pageInfo.hidden) {
          navigationItems.push({
            title: pageInfo.title,
            path: getUrlPath(entry.name),
            order: pageInfo.order
          });
        }
      } else if (entry.isDirectory()) {
        // Handle subdirectories (second level)
        const subNavItem = await processDirectory(fullPath, entry.name);
        if (subNavItem && subNavItem.children && subNavItem.children.length > 0) {
          navigationItems.push(subNavItem);
        }
      }
    }
    
    return sortNavigationItems(navigationItems);
  } catch (error) {
    console.warn('Error generating navigation:', error);
    return [];
  }
}

/**
 * Processes a directory to create navigation items with children
 */
async function processDirectory(dirPath: string, dirName: string): Promise<NavigationItem | null> {
  try {
    const entries = await readdir(dirPath, { withFileTypes: true });
    const children: NavigationItem[] = [];
    
    for (const entry of entries) {
      if (entry.isFile() && isValidPageFile(entry.name)) {
        const filePath = join(dirPath, entry.name);
        const pageInfo = await getPageInfo(filePath);
        
        if (!pageInfo.hidden) {
          children.push({
            title: pageInfo.title,
            path: getUrlPath(entry.name, dirName),
            order: pageInfo.order
          });
        }
      }
    }
    
    if (children.length === 0) {
      return null;
    }
    
    return {
      title: formatDirectoryTitle(dirName),
      path: `/${dirName}`,
      children: sortNavigationItems(children)
    };
  } catch (error) {
    console.warn(`Error processing directory ${dirName}:`, error);
    return null;
  }
}

/**
 * Checks if a file is a valid page file (Astro or Markdown)
 */
function isValidPageFile(filename: string): boolean {
  const ext = extname(filename).toLowerCase();
  return ['.astro', '.md', '.mdx'].includes(ext);
}

/**
 * Converts filename to URL path
 */
function getUrlPath(filename: string, directory?: string): string {
  const name = basename(filename, extname(filename));
  
  // Handle index files
  if (name === 'index') {
    return directory ? `/${directory}/` : '/';
  }
  
  return directory ? `/${directory}/${name}` : `/${name}`;
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
 * Ext
racts page information from a file including frontmatter
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
    return item.children.some(child => child.path === currentPath);
  }
  
  return false;
}