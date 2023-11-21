return {
  {
    "lervag/vimtex",
    lazy = false,
    keys = {
      {
        "<leader>v",
        "<Cmd>VimtexCompile<cr>",
        mode = "n",
        desc = "Compile Vimtex",
      },
    },
    config = function()
      vim.g.vimtex_syntax_conceal_disable = 1
      vim.g.vimtex_imaps_enabled = 0
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
      vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
    end,
    ft = "tex",
  },
}
