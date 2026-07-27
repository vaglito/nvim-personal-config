vim.keymap.set("n", "gb", ":bn<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "gB", ":bp<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "gd", ":bd<CR>", {noremap = true, silent = true})

vim.keymap.set({"n", "v"}, "<leader>f", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Formatear archivo o seleccion"})
