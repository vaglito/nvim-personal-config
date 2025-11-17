return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {"lua", "c", "javascript", "python", "typescript", "css", "html", "markdown", "markdown_inline"},
            highlight = { enable = true, additional_vim_regex_highlighting = false },
            indent = { enable = true }
        })
    end
}
