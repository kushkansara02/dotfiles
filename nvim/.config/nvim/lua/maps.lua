local keymap = vim.keymap

-- Leader remapping
keymap.set('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all (ctrl + A)
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Go to prev file
keymap.set('n', '[p', ':e#<Return>')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', 'qql', '<C-w><')
keymap.set('n', 'qqh', '<C-w>>')
keymap.set('n', 'qqk', '<C-w>+')
keymap.set('n', 'qqj', '<C-w>-')

-- Stay in indent mode
keymap.set('v', '<', '<gv')
keymap.set('v', '>', '>gv')

-- Fix pasting to keep old yanked text after pasting
keymap.set('v', 'p', '"_dP')
