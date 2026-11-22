return {
	'nvim-treesitter/nvim-treesitter',
	branch = "main",
	lazy = false,
	build = ':TSUpdate',
	config = function ()
		require('nvim-treesitter').setup()
		local lenguajes = {'java', 'javascript', 'lua', 'html', 'python', 'css', 'typescript', 'json', 'markdown', 'markdown_inline', 'nginx', 'toml', 'yaml'}

		-- Install only missing parsers so Neovim does not check or download them
		-- on every startup.
		local missing = vim.tbl_filter(function(language)
			return not pcall(vim.treesitter.language.add, language)
		end, lenguajes)
		if #missing > 0 then
			vim.defer_fn(function()
				require('nvim-treesitter').install(missing)
			end, 0)
		end
		vim.api.nvim_create_autocmd('FileType', {
			pattern = lenguajes,
			callback = function() 
				vim.treesitter.start() 
			end,
		})

	end
}
