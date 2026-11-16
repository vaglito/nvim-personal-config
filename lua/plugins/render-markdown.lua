return {
	"MeanderingProgrammer/render-markdown.nvim",
	ft = "markdown",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	opts = { render_modes = true },
	keys = { { "<leader>mt", "<cmd>RenderMarkdown toggle<CR>", desc = "Alternar renderizado Markdown" } },
}
