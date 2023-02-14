local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
    highlight = {
        enable = true,
        disable = { "latex" },
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        'tsx',
        'lua',
        'json',
        'css',
        'go',
        'cpp',
        'latex',
        'graphql'
    },
    autotag = {
        enable = true,
    }
}
