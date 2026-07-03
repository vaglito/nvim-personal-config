return {
    "nvim-treesitter/nvim-treesitter",
    -- Te aseguras de usar siempre la versión moderna
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        -- 1. DESCARGA: Reemplaza a 'ensure_installed' y 'auto_install'
        -- Es seguro ponerlo aquí; si ya están instalados, simplemente lo ignora.
        require('nvim-treesitter').install({
            "c", "rust", "javascript", "lua", "vim", "vimdoc", "query",
            "python", "typescript", "tsx", "html"
        }, { summary = false })

        -- 2. COLORES: Reemplaza a 'highlight = { enable = true }'
        -- Le decimos a Neovim que encienda los colores nativos cada vez que abras un archivo.
        vim.api.nvim_create_autocmd('FileType', {
            group = vim.api.nvim_create_augroup('custom-treesitter', { clear = true }),
            callback = function(args)
                -- Usamos pcall (escudo) para que si abres un archivo raro
                -- cuyo lenguaje no está instalado, Neovim no lance errores
                -- y simplemente use el color normal de Vim.
                pcall(vim.treesitter.start, args.buf)
            end,
        })
    end
}
