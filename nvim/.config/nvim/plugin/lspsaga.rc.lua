local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.init_lsp_saga {
    server_filetype_map = {}
}

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set('n', 'fi', '<Cmd>Lspsaga lsp_finder<cr>', opts)
vim.keymap.set('n', 'pd', '<Cmd>Lspsaga peek_definition<cr>', opts)
vim.keymap.set('n', 're', '<Cmd>Lspsaga rename<cr>', opts)
vim.keymap.set('n', '<Leader>ca', '<cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set('n', '<Leader>tm', '<cmd>Lspsaga open_floaterm<CR>', opts)
vim.keymap.set('t', '<Leader>tm', [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], opts)
