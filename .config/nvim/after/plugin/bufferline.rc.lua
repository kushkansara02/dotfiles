status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

vim.opt.termguicolors = true
bufferline.setup {
    options = {
        mode = 'tabs',
        separator_style = 'slant',
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true,
        diagnostics = "nvim_lsp"

    }
}

vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', {})
