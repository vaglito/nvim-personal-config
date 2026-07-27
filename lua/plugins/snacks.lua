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
	},
	keys = {
	{ "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
    { "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
  }
}
