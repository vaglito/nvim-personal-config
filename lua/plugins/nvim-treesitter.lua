return {
	'nvim-treesitter/nvim-treesitter',
	branch = "main",
	lazy = false,
	build = ':TSUpdate',
	config = function ()
		require('nvim-treesitter').setup()
		local lenguajes = {'java', 'javascript', 'lua', 'html', 'python', 'css', 'typescript', 'json', 'markdown', 'nginx', 'toml', 'yaml'}

		vim.defer_fn(function()
			require('nvim-treesitter').install(lenguajes)
		end, 0)
		vim.api.nvim_create_autocmd('FileType', {
			pattern = lenguajes,
			callback = function() 
				vim.treesitter.start() 
			end,
		})

	end
}
