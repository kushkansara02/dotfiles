return {
  -- add gruvbox
  { "navarasu/onedark.nvim" },

  { "ellisonleao/gruvbox.nvim" },

  { "folke/tokyonight.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
