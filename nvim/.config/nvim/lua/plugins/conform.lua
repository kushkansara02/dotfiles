return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      sh = { "shfmt" },
      go = { "goimports", "gofumpt" },
      cpp = { "clang-format" },
      python = { "ruff" },
      typescript = { "prettier" },
      graphql = { "prettier" },
    },
  },
}
