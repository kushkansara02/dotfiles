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
        "<leader>oi",
        "<Cmd>GoIfErr<cr>",
        mode = "n",
        desc = "If Err",
      },
      {
        "<leader>ot",
        "<Cmd>GoTest<cr>",
        mode = "n",
        desc = "Test",
      },
      {
        "<leader>op",
        "<Cmd>GoFixPlurals<cr>",
        mode = "n",
        desc = "Fix Plurals",
      },
      {
        "<leader>oo",
        "<Cmd>GoPkgOutline<cr>",
        mode = "n",
        desc = "Package Outline",
      },
    },
  },
}
