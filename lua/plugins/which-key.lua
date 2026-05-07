return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = function()
        local wk = require('which-key')
        wk.setup({
            delay = 300,
        })
        wk.add({
            { '<leader>c', group = 'Code' },
            { '<leader>d', group = 'Diagnostics' },
            { '<leader>f', group = 'Find (Telescope)' },
            { '<leader>h', group = 'Git Hunks' },
            { '<leader>r', group = 'Refactor' },
        })
    end,
}
