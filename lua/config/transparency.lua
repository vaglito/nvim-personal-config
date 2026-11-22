-- Let kitty's background opacity show through Neovim.  Themes are free to
-- keep semantic colours (cursor line, selections, diagnostics, etc.); only
-- the structural UI backgrounds are cleared.
local transparent_groups = {
  "Normal",
  "NormalNC",
  "NormalFloat",
  "FloatBorder",
  "FloatTitle",
  "SignColumn",
  "FoldColumn",
  "LineNr",
  "LineNrAbove",
  "LineNrBelow",
  "EndOfBuffer",
  "WinSeparator",
  "VertSplit",
  "StatusLine",
  "StatusLineNC",
  "TabLine",
  "TabLineFill",
  "TabLineSel",
}

local function apply()
  for _, group in ipairs(transparent_groups) do
    vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
  end
end

local transparency = vim.api.nvim_create_augroup("TransparentBackground", { clear = true })
vim.api.nvim_create_autocmd("ColorScheme", {
  group = transparency,
  callback = apply,
})

apply()
