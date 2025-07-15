return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',         -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons',     -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  config = function()
    require('barbar').setup({
      -- Opciones personalizadas aquí
      animation = true,
      insert_at_start = false,
    })

    -- Mapas de teclas comunes para navegar entre buffers
    vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<Leader>c', '<Cmd>BufferClose<CR>', { noremap = true, silent = true })
  end,
  version = '^1.0.0',
}

