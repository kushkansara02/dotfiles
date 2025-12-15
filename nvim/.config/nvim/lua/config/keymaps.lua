-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local del = vim.keymap.del

local function remap(mode, lhs, rhs, opts)
  del(mode, lhs, opts)
  map(mode, lhs, rhs, opts)
end

-- resizing windows
remap("n", "<A-k>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
remap("n", "<A-j>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<A-l>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<A-h>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Disable luasnip defaults
del({ "s" }, "<Tab>", {})
del({ "i", "s" }, "<S-Tab>", {})

-- fix for devcontainer
vim.keymap.set("n", "<BS>", "<cmd>TmuxNavigateLeft<CR>", { desc = "window left (backspace fix)" })
