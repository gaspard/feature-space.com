type t = {data: string, content: string}
@module("gray-matter") external parse: string => t = "default"
