return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "golangci-lint",
        "goimports",
        "delve",
        "clang-format",
        "cpplint",
        "shfmt",
        "stylua",
      },
    },
  },
}
