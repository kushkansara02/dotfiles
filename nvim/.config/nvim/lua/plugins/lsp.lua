return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "clangd",
        "bash-language-server",
        "lua-language-server",
        "json-lsp",
        "texlab",
        "rust-analyzer",
      },
    },
  },
}
