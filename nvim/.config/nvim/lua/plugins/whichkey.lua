return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      if require("lazyvim.util").has("noice.nvim") then
        opts.defaults["<leader>sn"] = { name = "+noice" }
      end

      opts.defaults["<leader>o"] = { name = "Go" }
      opts.defaults["<leader>m"] = { name = "Metals" }
      opts.defaults["<leader>L"] = { name = "LSP" }
      opts.defaults["<leader>t"] = { name = "Terminal" }
    end,
  },
}
