return {
	'neovim/nvim-lspconfig',
	config = function ()
		vim.lsp.config('pyright', {
			settings = {
				python = {
					analysis = {
						autoSearchPaths = true,
						diagnosticMode = "openFilesOnly",
						useLibraryCodeForTypes = true
					}
				}
			}
		})
		vim.lsp.config('jdtls', {
			cmd = {'jdtls'}
		})
		vim.lsp.enable(require("config.lsp_servers"))
	end
}

