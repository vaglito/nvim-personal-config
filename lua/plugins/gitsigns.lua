return {
    'lewis6991/gitsigns.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
        require('gitsigns').setup({
            signs = {
                add          = { text = '│' },
                change       = { text = '│' },
                delete       = { text = '_' },
                topdelete    = { text = '‾' },
                changedelete = { text = '~' },
            },
            on_attach = function(bufnr)
                local gs = require('gitsigns')
                local opts = function(desc)
                    return { buffer = bufnr, desc = desc }
                end

                -- Navigation
                vim.keymap.set('n', ']c', function() gs.nav_hunk('next') end, opts('Next hunk'))
                vim.keymap.set('n', '[c', function() gs.nav_hunk('prev') end, opts('Previous hunk'))

                -- Actions
                vim.keymap.set('n', '<leader>hs', gs.stage_hunk, opts('Stage hunk'))
                vim.keymap.set('n', '<leader>hr', gs.reset_hunk, opts('Reset hunk'))
                vim.keymap.set('n', '<leader>hp', gs.preview_hunk, opts('Preview hunk'))
                vim.keymap.set('n', '<leader>hb', function() gs.blame_line({ full = true }) end, opts('Blame line'))
            end,
        })
    end,
}
