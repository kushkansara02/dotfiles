return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "go", vim.lsp.buf.document_symbol }
      keys[#keys + 1] = { "gw", vim.lsp.buf.workspace_symbol }
      keys[#keys + 1] = { "<leader>ch", vim.lsp.buf.signature_help }

      -- all workspace diagnostics
      keys[#keys + 1] = { "<leader>cs", vim.diagnostic.setqflist }

      -- all workspace errors
      keys[#keys + 1] = {
        "<leader>ce",
        function()
          vim.diagnostic.setqflist({ severity = "E" })
        end,
      }

      -- all workspace warnings
      keys[#keys + 1] = {
        "<leader>cw",
        function()
          vim.diagnostic.setqflist({ severity = "W" })
        end,
      }

      -- buffer diagnostics only
      keys[#keys + 1] = { "<leader>cb", vim.diagnostic.setloclist }
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
