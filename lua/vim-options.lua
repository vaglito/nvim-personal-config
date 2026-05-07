-- General Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.encoding = "utf-8"
vim.opt.syntax = "enable"

-- Indentation
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.smarttab = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- UI
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Clipboard (use system clipboard)
vim.opt.clipboard = "unnamedplus"

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = "Move to left split" })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = "Move to right split" })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = "Move to below split" })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = "Move to above split" })

-- Shell (Windows)
vim.o.shell = "pwsh.exe"


local function set_transparent()
  local groups = {
    "Normal", "NormalNC", "Comment", "Constant", "Special", "Identifier",
    "Statement", "PreProc", "Type", "Underlined", "Todo", "String",
    "Function", "Conditional", "Repeat", "Operator", "Structure",
    "LineNr", "NonText", "SignColumn", "CursorLine", "CursorLineNr",
    "StatusLine", "StatusLineNC", "EndOfBuffer",
  }
  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
  end
end

-- Ejecutar la función
set_transparent()
