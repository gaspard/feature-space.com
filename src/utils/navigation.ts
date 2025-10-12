import { readdir } from 'fs/promises';
import { join, extname, basename } from 'path';
import matter from 'gray-matter';
import { readFile } from 'fs/promises';

export interface NavigationItem {
  title: string;
  path: string;
  active: boolean;
  children?: NavigationItem[];
  order: number;
}

export interface PageInfo {
  title: string;
  path: string;
  active: boolean;
  order: number;
}

const pagesDir = join(process.cwd(), 'src/pages');

export async function generateNavigation(currentPath: string, maxDepth: number = 2): Promise<NavigationItem[]> {
  return await processDirectoryRecursive(pagesDir, '', currentPath, maxDepth, 1);
}

async function processDirectoryRecursive(dirPath: string, relativePath: string, currentPath: string, maxDepth: number, depth: number): Promise<NavigationItem[]> {
  try {
    const entries = await readdir(dirPath, { withFileTypes: true });
    const navigationItems: NavigationItem[] = [];

    for (const entry of entries) {
      const fullPath = join(dirPath, entry.name);
      const currentRelativePath = relativePath ? `${relativePath}/${entry.name}` : entry.name;

      if (entry.isFile() && isPage(entry.name)) {
        const info = await pageInfo(fullPath, currentPath);
        navigationItems.push(info);
      } else
        if (entry.isDirectory()) {
          const children = depth < maxDepth ? await processDirectoryRecursive(fullPath, currentRelativePath, currentPath, maxDepth, depth + 1) : null;

          const info = await directoryInfo(fullPath, currentPath);

          if (children && children.length > 0) {
            navigationItems.push({
              ...info,
              children: sortNavigationItems(children),
            });
          } else {
            navigationItems.push(info)
          }
        }
    }

    return navigationItems.sort((a, b) => a.order - b.order);
  } catch (error) {
    console.warn(`Error processing directory ${dirPath}:`, error);
    return [];
  }
}

async function directoryInfo(fullPath: string, currentPath: string): Promise<PageInfo> {
  const content = await readFile(join(fullPath, 'index.mdx'), 'utf-8');
  const { data: frontmatter } = matter(content);
  const path = fullPath.slice(pagesDir.length);

  return {
    title: frontmatter.title,
    path,
    active: (currentPath + '/').startsWith(path),
    order: frontmatter.order,
  };
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

async function pageInfo(filePath: string, currentPath: string): Promise<PageInfo> {
  const content = await readFile(filePath, 'utf-8');
  const { data: frontmatter } = matter(content);
  const path = filePath.slice(pagesDir.length);

  return {
    title: frontmatter.title || "MISING TITLE",
    path,
    active: (currentPath + '/').startsWith(path),
    order: frontmatter.order,
  };
}

export function getCurrentPagePath(url: URL): string {
  let pathname = url.pathname;

  if (pathname !== '/' && pathname.endsWith('/')) {
    pathname = pathname.slice(0, -1);
  }

  return pathname;
}

function isPage(filename: string): boolean {
  const ext = extname(filename).toLowerCase();
  return ['.astro', '.md', '.mdx'].includes(ext) && filename !== 'index.mdx' && filename !== '404.astro';
}
