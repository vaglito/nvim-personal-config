vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cursorline = true
vim.opt.wrap = true
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.g.clipboard = {
  name = 'WSL_Clipboard',
  copy = {
    ['+'] = 'clip.exe',
    ['*'] = 'clip.exe',
  },
  paste = {
    ['+'] = 'powershell.exe -NoProfile -Command "Get-Clipboard"',
    ['*'] = 'powershell.exe -NoProfile -Command "Get-Clipboard"',
  },
  cache_enabled = 0,
}
vim.diagnostic.config({
	virtual_text = true
})

-- Pliegues de código (compatible con Snacks statuscolumn y Treesitter)
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldtext = ""

