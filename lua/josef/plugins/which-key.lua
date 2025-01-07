return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 500
    end,
    opts = {
        icons = {
            mappings = vim.g.have_nerd_font,
            keys = {}
        },
        spec = {
            { '<leader>c', group = 'Code', mode = { 'n', 'x' } },
            { '<leader>e', group = 'File Explorer', mode = { 'n', 'x' } },
            { '<leader>f', group = 'Telescope Find', mode = { 'n', 'x' } },
            { '<leader>n', group = 'Neovim', mode = { 'n', 'x' }, icon = { icon = "󰙵 ", color = "green" }  },
            { '<leader>s', group = 'Sessions', mode = { 'n', 'x' } },
            { '<leader>t', group = 'Tabs', mode = { 'n', 'x' } },
        },
    },
}
