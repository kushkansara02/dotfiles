vim.cmd('autocmd!')
vim.cmd('syntax on')
vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')

vim.opt.clipboard = 'unnamed'
vim.opt.wildmenu = true
vim.opt.ttyfast = true
vim.opt.gdefault = true

vim.scriptencodeing = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'zsh'

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

vim.opt.ai = true
vim.opt.si = true
vim.opt.wrap = false
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

vim.opt.nu = true
vim.opt.smartcase = true

vim.opt.incsearch = true
vim.opt.mouse = 'a'
vim.opt.ruler = true
vim.opt.shortmess = 'atI'
vim.opt.showmode = true

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }
