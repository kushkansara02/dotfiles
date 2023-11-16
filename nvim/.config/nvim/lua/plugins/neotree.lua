return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      mappings = {
        ["w"] = "none",
      },
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
      },
    },
  },
  keys = {
    { "<leader>E", "<leader>fe", desc = "Explorer NeoTree (root dir)", remap = true },
    { "<leader>e", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
    {
      "<leader>fE",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = Util.root() })
      end,
      desc = "Explorer NeoTree (root dir)",
    },
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
  },
}
