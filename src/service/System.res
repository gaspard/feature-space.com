module Fs = {
  type readdirOptions = {
    encoding: string,
    withFileTypes: bool,
  }
  @module("node:fs") external existsSync: string => bool = "existsSync"
  @module("node:fs") external readFileSync: (string, string) => string = "readFileSync"
  @module("node:fs")
  external readdirSync: (string, readdirOptions) => array<SystemType.dirent> = "readdirSync"
  @module("node:fs") external writeFileSync: (string, string, string) => unit = "writeFileSync"
  @module("node:fs") external mkdirSync: string => unit = "mkdirSync"
}

module Path = {
  @module("node:path") external join: (string, string) => string = "join"
}

module Process = {
  @val external cwd: unit => string = "process.cwd"
}

let readdirSync = path => {
  Fs.readdirSync(path, {encoding: "utf8", withFileTypes: true})
}

let make: unit => SystemType.t = () => {
  fs: {
    existsSync: Fs.existsSync,
    readFileSync: Fs.readFileSync,
    readdirSync,
    writeFileSync: Fs.writeFileSync,
    mkdirSync: Fs.mkdirSync,
  },
  path: {
    join: Path.join,
  },
  process: {
    cwd: Process.cwd,
  },
}
