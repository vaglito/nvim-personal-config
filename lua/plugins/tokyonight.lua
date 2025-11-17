return {
    "folke/tokyonight.nvim",
    lazy= false,
    priority = 1000,
    config = function()
        vim.cmd('colorscheme tokyonight-storm')
        vim.cmd(':highlight NeogitDiffAddhighlight guifg=#282828 guibg=#b8bb26')
    end
}
