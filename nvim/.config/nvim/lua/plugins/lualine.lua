return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    local icons = require("lazyvim.config").icons
    local Util = require("lazyvim.util")

    return {
      options = {
        icons_enabled = true,
        theme = "onedark",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = {
          {
            "mode",
          },
        },
        lualine_b = {
          {
            "branch",
            icon = "",
          },
          {
            "diff",
          },
        },
        lualine_c = {
          {
            "diagnostics",
          },
          {
            "filename",
          },
        },
        lualine_x = { "filesize" },
        lualine_y = {
          {
            "filetype",
            icons_enabled = true,
          },
        },
        lualine_z = {
          {
            "location",
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = { "neo-tree", "lazy" },
    }
  end,
}
