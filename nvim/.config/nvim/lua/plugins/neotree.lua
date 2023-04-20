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
}
