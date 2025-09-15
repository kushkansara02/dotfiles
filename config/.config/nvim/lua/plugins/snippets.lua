return {
  {
    "saghen/blink.cmp",
    version = "*",
    -- !Important! Make sure you're using the latest release of LuaSnip
    -- `main` does not work at the moment
    dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },
    opts = {
      snippets = {
        preset = "luasnip",
        expand = function(snippet)
          require("luasnip").lsp_expand(snippet)
        end,
        active = function(filter)
          if filter and filter.direction then
            return require("luasnip").jumpable(filter.direction)
          end
          return require("luasnip").in_snippet()
        end,
        jump = function(direction)
          require("luasnip").jump(direction)
        end,
      },
      -- ensure you have the `snippets` source (enabled by default)
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      keymap = {
        ["<Tab>"] = {},
        ["<S-Tab>"] = {},
      },
    },
  },
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    build = "make install_jsregexp",
    opts = function()
      require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/luasnippets/" })
      return {
        history = true,
        delete_check_events = "TextChanged",
        enable_autosnippets = true,
        cut_selection_keys = "jk",
      }
    end,
    -- stylua: ignore
    keys = {
      {
        "jk",
        function()
          return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next"
        end,
        expr = true, silent = true, mode = "i",
      },
      { "jk", function() require("luasnip").jump(1) end,   mode = "s" },
      { "kj", function() require("luasnip").jump( -1) end, mode = { "i", "s" } },
    },
  },
}
