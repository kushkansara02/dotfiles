local M = {}
lvim.keys = {
  -- ---@usage change or add keymappings for insert mode
  -- insert_mode = {
  -- },

  ---@usage change or add keymappings for normal mode
  normal_mode = {
    -- Tab switch buffer
    ["<S-l>"] = ":BufferLineCycleNext<CR>",
    ["<S-h>"] = ":BufferLineCyclePrev<CR>",

    -- Page down/up
    ["[d"] = "<PageUp>",
    ["]d"] = "<PageDown>",
  },

  ---@usage change or add keymappings for visual mode
  visual_mode = {
    -- Allow pasting same thing many times
    ["P"] = '"_dP',

    -- better indent
    [">"] = "<gv",
    ["<"] = ">gv",

    -- move selected line(s)
    ["K"] = ":move '<-2<CR>gv-gv",
    ["J"] = ":move '>+1<CR>gv-gv",
  },

  ---@usage change or add keymappings for visual block mode
  visual_block_mode = {
    -- Allow pasting same thing many times
    ["p"] = '""p:let @"=@0<CR>',

    -- Move selected line / block of text in visual mode
    ["K"] = ":move '<-2<CR>gv-gv",
    ["J"] = ":move '>+1<CR>gv-gv",
  },
}

require "user.whichkey"

return M
