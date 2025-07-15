-- define la ruta a lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Instala lazy.nvim si no existe (Bootstrap)
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end


vim.g.web_devicons_enable_terminal_icons = 1
-- Añade lazy.vim al 'runtimepath' para que Neovim lo pueda cargar
vim.opt.rtp:prepend(lazypath)

-- Carga la configuracion de lazy y le dice donde estan los plugins
require("lazy").setup("plugins") -- "plugins" se refiere a la carpeta lua/plugins/


-- Configuraciones exactas de tu .vimrc
local opt = vim.opt
opt.title = true          -- set title
opt.number = true         -- set number
opt.mouse = "a"           -- set mouse=a
opt.wrap = false          -- set nowrap
opt.tabstop = 2           -- set tabstop=2
opt.shiftwidth = 2        -- set shiftwidth=2
opt.softtabstop = 2       -- set softtabstop=2
vim.cmd("syntax on")      -- syntax on
vim.opt.autoindent = true
vim.opt.smartindent = true

