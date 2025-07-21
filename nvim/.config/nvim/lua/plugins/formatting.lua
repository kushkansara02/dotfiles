return {
  {
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
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "goimports",
        "gofumpt",
        "clang-format",
        "shfmt",
        "stylua",
        "ruff",
        "prettier",
      },
    },
  },
}
