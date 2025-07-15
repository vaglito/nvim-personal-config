return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({
      check_ts = true, -- usa Treesitter para mejores resultados
			map_cr = false,
    })
  end,
}
