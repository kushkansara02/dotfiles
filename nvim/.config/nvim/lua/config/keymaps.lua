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

map("n", "˚", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "∆", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "˙", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "¬", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

map("n", "<leader>tm", function()
  Util.float_term(nil, { cwd = Util.get_root() })
end, { desc = "Terminal (root dir)" })
map("n", "<leader>tM", function()
  Util.float_term()
end, { desc = "Terminal (cwd)" })
map("t", "<esc><esc>", "<c-c><c-d>", { desc = "Exit terminal" })
map("t", "<c-n>", "<c-\\><c-n>", { desc = "Normal mode" })
