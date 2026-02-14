return {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    config = function()
        require('conform').setup({
            formatters_by_ft = {
                lua = { 'stylua' },
                python = { 'black' },
                javascript = { 'prettier' },
                javascriptreact = { 'prettier' },
                typescript = { 'prettier' },
                typescriptreact = { 'prettier' },
                css = { 'prettier' },
                html = { 'prettier' },
                json = { 'prettier' },
                jsonc = { 'prettier' },
                yaml = { 'prettier' },
                markdown = { 'prettier' },
                c = { 'clang-format' },
                cpp = { 'clang-format' },
                sh = { 'shfmt' },
                bash = { 'shfmt' },
            },
            format_on_save = {
                timeout_ms = 3000,
                lsp_format = 'fallback',
            },
        })
    end,
}
