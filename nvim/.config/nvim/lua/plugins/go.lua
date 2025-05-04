return {
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()',
    keys = {
      {
        "<leader>cgi",
        "<Cmd>GoIfErr<cr>",
        mode = "n",
        desc = "If Err",
      },
      {
        "<leader>cgt",
        "<Cmd>GoTest<cr>",
        mode = "n",
        desc = "Test",
      },
      {
        "<leader>cgp",
        "<Cmd>GoFixPlurals<cr>",
        mode = "n",
        desc = "Fix Plurals",
      },
      {
        "<leader>cgo",
        "<Cmd>GoPkgOutline<cr>",
        mode = "n",
        desc = "Package Outline",
      },
    },
  },
}
