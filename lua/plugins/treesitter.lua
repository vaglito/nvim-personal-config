return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                -- Core
                "lua", "vim", "vimdoc", "query",
                -- Web
                "javascript", "typescript", "tsx", "html", "css", "json", "jsonc",
                -- Backend
                "python", "c", "cpp",
                -- Config / DevOps
                "yaml", "toml", "dockerfile", "bash",
                -- Docs
                "markdown", "markdown_inline",
            },
            highlight = { enable = true, additional_vim_regex_highlighting = false },
            indent = { enable = true },
        })
    end
}
