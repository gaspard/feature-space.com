import matter from "gray-matter"
import { readFile } from "fs/promises"
import * as S from "sury"
import { extname, join } from "path"

// === FROM llmath

const itemSchema = S.schema({
  id: S.string,
  type: S.union([
    "chapter",
    "concepts",
    "exercises",
    "quiz",
    "cards",
    "proofs",
    "podcast",
    "audio"
  ]),
  order: S.number,
  title: S.string,
  tags: S.array(S.string),
  createdAt: S.string
})

export type Item = S.Infer<typeof itemSchema>

export const chapterSchema = S.merge(
  itemSchema,
  S.schema({
    type: S.union(["chapter"]),
    course: S.string,
    courseId: S.string
  })
)

export type ChapterItem = S.Infer<typeof chapterSchema>

export const generatedItemSchema = S.merge(
  itemSchema,
  S.schema({
    level: S.union(["regular", "pro"]),
    course: S.string,
    courseId: S.string,
    chapter: S.string,
    chapterId: S.string
  })
)

/// ===

const tocItemSchema = S.merge(
  generatedItemSchema,
  S.schema({
    path: S.string
  })
)

export type TOCItem = S.Infer<typeof tocItemSchema>

const pagesDir = join(process.cwd(), "src/pages")

export async function itemFromFile(
  basePath: string,
  path: string
): Promise<TOCItem> {
  const fullpath = join(basePath, path)
  const { data } = matter(await readFile(fullpath, "utf-8"))
  const item = S.parseOrThrow(data, generatedItemSchema)
  return {
    ...item,
    path: fullpath.slice(pagesDir.length).slice(0, - extname(path).length),
  }
}