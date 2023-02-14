vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { command = "goimports" } }

local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "golangci-lint" } }
