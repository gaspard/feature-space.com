type dirent = {
  name: string,
  isDirectory: unit => bool,
}

type fs = {
  existsSync: string => bool,
  readFileSync: (string, string) => string,
  readdirSync: string => array<dirent>,
  writeFileSync: (string, string, string) => unit,
}

type path = {join: (string, string) => string}

type process = {cwd: unit => string}

type t = {
  fs: fs,
  path: path,
  process: process,
}
