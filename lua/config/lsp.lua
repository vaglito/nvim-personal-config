-- Enable all LSP servers
--
--
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        'pyright',
        'lua_ls',
        'ts_ls',
        'clangd',
        'dockerls',
        'docker_compose_language_service',
        'yamlls',
        'jsonls',
        'bashls',
    },
    automatic_installation = true, -- ¡Esta línea es clave para forzar la descarga!
})
vim.lsp.enable({
    'pyright',
    'lua_ls',
    'ts_ls',
    'clangd',
    'dockerls',
    'docker_compose_language_service',
    'yamlls',
    'jsonls',
    'bashls',
})

-- LSP Attach: keymaps + completion
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        local buf = ev.buf
        local opts = function(desc)
            return { buffer = buf, desc = desc }
        end

        -- Native completion
        if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
            vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
            vim.lsp.completion.enable(true, client.id, buf, { autotrigger = true })
            vim.keymap.set('i', '<C-Space>', function()
                vim.lsp.completion.get()
            end)
        end

        -- Navigation
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts('Go to definition'))
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts('Go to declaration'))
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts('Go to implementation'))
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts('Go to references'))
        vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts('Go to type definition'))

        -- Info
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts('Hover documentation'))
        vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, opts('Signature help'))

        -- Actions
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts('Rename symbol'))
        vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts('Code action'))

        -- Diagnostics
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts('Previous diagnostic'))
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts('Next diagnostic'))
        vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts('Show diagnostic'))
        vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, opts('Diagnostic list'))
    end,
})

-- Diagnostics config
vim.diagnostic.config({
    virtual_lines = {
        current_line = true,
    },
})
