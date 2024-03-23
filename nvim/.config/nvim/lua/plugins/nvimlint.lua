return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      text = { "proselint", "vale" },
      markdown = { "proselint", "markdownlint", "vale" },
      cpp = { "cpplint" },
      go = { "golangcilint" },
    },
  },
}
