return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      keys[#keys + 1] = { "<leader>cs", vim.diagnostic.setqflist, desc = "Show All Workspace Diagnostics" }

      keys[#keys + 1] = {
        "<leader>ce",
        function()
          vim.diagnostic.setqflist({ severity = "E" })
        end,
        desc = "Show All Workspace Errors",
      }

      keys[#keys + 1] = {
        "<leader>cw",
        function()
          vim.diagnostic.setqflist({ severity = "W" })
        end,
        desc = "Show All Workspace Warnings",
      }

      keys[#keys + 1] = { "<leader>cb", vim.diagnostic.setloclist, desc = "Show Only Buffer Diagnostics" }
    end,
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        gopls = {
          cmd = { "gopls" },
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
          root_dir = require("lspconfig.util").root_pattern("go.work", "go.mod", ".git"),
          settings = {
            gopls = {
              completeUnimported = true,
              usePlaceholders = true,
              analyses = {
                unusedparams = true,
                unusedwrite = true,
                unusedvariable = true,
              },
            },
          },
        },
        clangd = {},
      },
    },
  },
}
