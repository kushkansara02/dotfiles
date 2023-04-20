return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {},
    opts = function()
      require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/luasnippets/" })
      return {
        history = true,
        delete_check_events = "TextChanged",
        enable_autosnippets = true,
        update_events = "TextChanged,TextChangedI",
        store_selection_keys = "jk",
      }
    end,
  -- stylua: ignore
    keys = {
      {
        "jk",
        function()
          return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
        end,
        expr = true, silent = true, mode = "i",
      },
      { "jk", function() require("luasnip").jump(1) end, mode = "s" },
      { "kj", function() require("luasnip").jump(-1) end, mode = { "i", "s" } },
    },
  },
}
