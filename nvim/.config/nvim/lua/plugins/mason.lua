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
        -- formatters
        "goimports",
        "clang-format",
        "shfmt",
        "stylua",
        "black",
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
