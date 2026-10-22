return {
	"Shatur/neovim-ayu",
	lazy = false,
	priority = 1000,
	opts = {
		mirage = false,
		terminal = true,
	},
	config = function(_, opts)
		require("ayu").setup(opts)
		require("ayu").colorscheme()
	end,
}
