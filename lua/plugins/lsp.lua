return {
	'neovim/nvim-lspconfig',
	config = function ()
		vim.lsp.config('pyright', {
			python = {
				analysis = {
					autoSearchPaths = true,
					diagnosticMode = "openFilesOnly",
					useLibraryCodeForTypes = true
				}
			}
		})
		vim.lsp.enable({
			'pyright',
		})
	end
}

