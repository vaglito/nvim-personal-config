return {
  "neoclide/coc.nvim",
  branch = "release",
  config = function()
    vim.keymap.set("n", "K", ":call CocActionAsync('doHover')<CR>", { silent = true })
    vim.keymap.set("n", "gd", "<Plug>(coc-definition)", {})
    vim.keymap.set("n", "gi", "<Plug>(coc-implementation)", {})
    vim.keymap.set("n", "gr", "<Plug>(coc-references)", {})
    vim.keymap.set("n", "<leader>rn", "<Plug>(coc-rename)", {})
    vim.keymap.set("n", "<leader>f", ":call CocAction('format')<CR>", { silent = true })
    vim.keymap.set("n", "<leader>a", ":CocAction<CR>", { silent = true })

    vim.api.nvim_set_keymap("i", "<Tab>",
      [[pumvisible() ? "\<C-n>" : "\<Tab>"]],
      { expr = true, noremap = true })
    vim.api.nvim_set_keymap("i", "<S-Tab>",
      [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]],
      { expr = true, noremap = true })

    -- ✅ ESTA ES LA CLAVE
		    vim.api.nvim_set_keymap("i", "<CR>",
      [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>"]],
      { expr = true, noremap = true, silent = true })
  end,
}

