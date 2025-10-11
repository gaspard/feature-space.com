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

export async function generateNavigation(): Promise<NavigationItem[]> {
  const pagesDir = join(process.cwd(), 'src/pages');

  try {
    return await processDirectoryRecursive(pagesDir, '');
  } catch (error) {
    console.warn('Error generating navigation:', error);
    return [];
  }
}

function isPage(filename: string): boolean {
  const ext = extname(filename).toLowerCase();
  return ['.astro', '.md', '.mdx'].includes(ext) && filename !== 'index.md' && filename !== '404.astro';
}

async function processDirectoryRecursive(dirPath: string, relativePath: string): Promise<NavigationItem[]> {
  try {
    const entries = await readdir(dirPath, { withFileTypes: true });
    const navigationItems: NavigationItem[] = [];

    for (const entry of entries) {
      const fullPath = join(dirPath, entry.name);
      const currentRelativePath = relativePath ? `${relativePath}/${entry.name}` : entry.name;

      if (entry.isFile() && isPage(entry.name)) {
        // Page
        const info = await pageInfo(fullPath);
        if (!info.hidden) {
          navigationItems.push({
            title: info.title,
            path: getUrlPath(entry.name, relativePath),
            order: info.order
          });
        }
      } else if (entry.isDirectory()) {
        // Directory
        const children = await processDirectoryRecursive(fullPath, currentRelativePath);

        if (children.length > 0) {
          const infoFile = await directoryInfo(fullPath);

          const accentLessPath = generateAccentLessPath(currentRelativePath);

          const indexPath = await getDirectoryIndexPath(fullPath, currentRelativePath);

          navigationItems.push({
            title: infoFile?.title || formatDirectoryTitle(entry.name),
            path: indexPath || `/${accentLessPath}/`,
            children: sortNavigationItems(children),
            order: infoFile?.order
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

async function directoryInfo(dirPath: string): Promise<PageInfo | null> {
  try {
    const indexPath = join(dirPath, 'index.md');
    try {
      const content = await readFile(indexPath, 'utf-8');
      const { data: frontmatter } = matter(content);

      return {
        title: frontmatter.title,
        path: indexPath,
        order: frontmatter.order,
        hidden: frontmatter.hidden || false
      };
    } catch (error) {
      return null;
    }
  } catch (error) {
    console.warn(`Error reading directory info for ${dirPath}:`, error);
    return null;
  }
}

function removeAccents(str: string): string {
  return str
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-zA-Z0-9\s-]/g, '')
    .replace(/\s+/g, '-')
    .toLowerCase();
}

async function getDirectoryIndexPath(dirPath: string, relativePath: string): Promise<string | null> {
  try {
    const indexPath = join(dirPath, '_index.md');
    try {
      await readFile(indexPath, 'utf-8');
      return `/${generateAccentLessPath(relativePath)}/`;
    } catch (error) {
      return null;
    }
  } catch (error) {
    console.warn(`Error checking directory index for ${dirPath}:`, error);
    return null;
  }
}

function generateAccentLessPath(relativePath: string): string {
  const pathParts = relativePath.split('/');
  return pathParts.map(part => removeAccents(part)).join('/');
}

function getUrlPath(filename: string, relativePath?: string): string {
  const name = basename(filename, extname(filename));

  // Index file
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

function formatDirectoryTitle(dirName: string): string {
  return dirName
    .split('-')
    .map(word => word.charAt(0).toUpperCase() + word.slice(1))
    .join(' ');
}

export function sortNavigationItems(items: NavigationItem[]): NavigationItem[] {
  return items.sort((a, b) => {
    if (a.order !== undefined && b.order !== undefined) {
      return a.order - b.order;
    }

    if (a.order !== undefined && b.order === undefined) {
      return -1;
    }
    if (a.order === undefined && b.order !== undefined) {
      return 1;
    }

    return a.title.localeCompare(b.title);
  });
}

async function pageInfo(filePath: string): Promise<PageInfo> {
  try {
    const content = await readFile(filePath, 'utf-8');
    const { data: frontmatter } = matter(content);

    return {
      title: frontmatter.title || "MISING TITLE",
      path: filePath,
      order: frontmatter.order,
      hidden: frontmatter.hidden || false
    };
  } catch (error) {
    console.warn(`Error reading file ${filePath}:`, error);
    return {
      title: "MISING TITLE",
      path: filePath,
      hidden: false
    };
  }
}

export function getCurrentPagePath(url: URL): string {
  let pathname = url.pathname;

  if (pathname !== '/' && pathname.endsWith('/')) {
    pathname = pathname.slice(0, -1);
  }

  return pathname;
}

export function isActiveNavItem(item: NavigationItem, currentPath: string): boolean {
  if (item.path === currentPath) {
    return true;
  }

  if (item.children) {
    return item.children.some(child => isActiveNavItem(child, currentPath));
  }

  return false;
}

