vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { command = "clang-format" } }

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.offsetEncoding = 'utf-8'
require('lspconfig').clangd.setup {
  capabilities = capabilities
}
