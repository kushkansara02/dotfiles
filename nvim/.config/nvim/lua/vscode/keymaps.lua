local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Insert --


-- Normal --

-- Resize with arrows
keymap("n", "<C-k>", "<C-w><", opts)
keymap("n", "<C-j>", "<C-w>>", opts)
keymap("n", "<C-h>", "<C-w>+", opts)
keymap("n", "<C-l>", "<C-w>->", opts)

-- Navigate buffers
keymap("n", "L", "<Cmd>tabnext<CR>", opts)
keymap("n", "H", ":tabprevious<cr>", opts)

-- Delete a word backwards
keymap("n", "dw", 'vb"_d', opts)

-- Page up/down
keymap("n", "U", "<PageUp>", opts)
keymap("n", "I", "<PageDown>", opts)

-- Visual --

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Pasting many times
keymap("v", "P", '"_dP', opts)


-- Visual Block --

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
