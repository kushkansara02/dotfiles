vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { command = "prettierd" } }

local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "eslint_d" } }
