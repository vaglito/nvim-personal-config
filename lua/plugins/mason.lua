return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = require("config.lsp_servers"),
		-- The servers are enabled explicitly in plugins/lsp.lua.
		automatic_enable = false,
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
