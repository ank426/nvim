return {
  cmd = {"clangd"},
  filetypes = {"c"},
  root_markers = {".clangd", ".clang-tidy", ".clang-format", "compile_commands.json", "compile_flags.txt", "configure.ac", ".git"},
  init_options = {
    fallbackFlags = {"--std=c23"},
  },
  capabilities = {
    offsetEncoding = {"utf-8", "utf-16"},
    textDocument = {
      completion = {
        editsNearCursor = true,
      },
    },
  },
}
