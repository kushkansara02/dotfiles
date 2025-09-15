return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = { "markdownlint" },
        cpp = { "cpplint" },
        go = { "golangcilint" },
        py = { "ruff" },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "golangci-lint",
        "cpplint",
        "markdownlint",
        "proselint",
      },
    },
  },
}
