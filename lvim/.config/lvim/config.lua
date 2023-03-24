vim.opt.relativenumber = true

lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = { "*.lua", "*.cpp", "*.cc", "*.go" },
  timeout = 1000,
}

lvim.leader = "space"

lvim.builtin.terminal.open_mapping = "<Leader>tm"
lvim.builtin.terminal.active = true

lvim.colorscheme = "onedark"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"

lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

lvim.builtin.treesitter.auto_install = true

lvim.plugins = require_clean "user.plugins"
reload 'user.luasnip'
reload 'user.keymappings'
reload 'user.vimtex'
