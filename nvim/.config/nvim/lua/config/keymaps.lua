-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local function del(mode, key, opts)
  opts = opts or {}
  opts.silent = opts.silent ~= false
  vim.keymap.del(mode, key, opts)
end

local function remap(mode, lhs, rhs, opts)
  del(mode, lhs, opts)
  map(mode, lhs, rhs, opts)
end

-- resizing windows
remap("n", "<A-k>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
remap("n", "<A-j>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
remap("n", "<A-l>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
remap("n", "<A-h>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- LSP
map("n", "<leader>Ls", "<cmd>LspStart<cr>", { desc = "Start LSP" })
map("n", "<leader>Lt", "<cmd>LspStop<cr>", { desc = "Stop LSP" })
map("n", "<leader>Li", "<cmd>LspInfo<cr>", { desc = "LSP Info" })

-- Diable luasnip default
del("s", "<Tab>", {})
del({ "i", "s" }, "<S-Tab>", {})
