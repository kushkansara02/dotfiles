return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSP
        "gopls",
        "clangd",
        "bash-language-server",
        "lua-language-server",
        "json-lsp",
        "texlab",
        "rust-analyzer",
        -- formatters
        "goimports",
        "gofumpt",
        "clang-format",
        "shfmt",
        "stylua",
        "ruff",
        "prettier",
        -- linters
        "golangci-lint",
        "cpplint",
        "markdownlint",
        "proselint",
        -- DAP
        "delve",
      },
      ui = {
        border = "rounded",
      },
    },
  },
}
