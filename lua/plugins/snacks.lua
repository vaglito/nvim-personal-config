return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		explorer = { enabled = true },
		picker = { 
			enabled = true,
			hidden = true,
			sources = {
				files = {
					hidden = true,
				},
				explorer = {
					hidden = true,
				}
			}
		},
		statuscolumn = {
			enabled = true,
			left = { "mark", "sign" }, -- Prioridad de signos a la izquierda (marcas, diagnósticos)
			right = { "fold", "git" }, -- Prioridad de signos a la derecha (pliegues/folds, git)
			folds = {
				open = false, -- Muestra el ícono de pliegue cerrado; al hacer clic o presionar 'za' se abre/cierra
				git_hl = false,
			},
			refresh = 50,
		},
	},
	keys = {
	{ "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
    { "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
-- 🚀 CODEX: Abrir desde modo normal, ocultar desde la terminal con Ctrl+x
		{ "<leader>cx", function() Snacks.terminal.toggle("codex", { win = { position = "float", border = "rounded", width = 0.85, height = 0.85 }, cwd = vim.fn.expand("%:p:h") }) end, mode = "n", desc = "Abrir Codex" },
		{ "<C-x>", function() Snacks.terminal.toggle("codex") end, mode = "t", desc = "Ocultar Codex (Conserva historial)" },

		-- 💻 TERMINAL: Abrir desde modo normal, ocultar desde la terminal con Ctrl+t
		{ "<leader>tt", function() Snacks.terminal.toggle(nil, { win = { position = "float", border = "rounded", width = 0.85, height = 0.85 }, cwd = vim.fn.expand("%:p:h") }) end, mode = "n", desc = "Abrir Terminal" },
		{ "<C-t>", function() Snacks.terminal.toggle(nil) end, mode = "t", desc = "Ocultar Terminal (Conserva historial)" },  }
}
