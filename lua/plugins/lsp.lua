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
		vim.lsp.config('jdtls', {
			cmd = {'jdtls'}
		})
		vim.lsp.enable({
			'pyright',
			'vtsls',
			'jdtls',
			'nginx_language_server',
			'tailwindcss',
		})
	end
}

