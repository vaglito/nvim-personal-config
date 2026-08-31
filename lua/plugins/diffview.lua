return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Opcional: para ver íconos de archivos
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },  -- Carga perezosa (lazy load) mediante comandos
  config = function()
    require("diffview").setup({
      -- Tu configuración personalizada va aquí (puedes dejarlo vacío para usar la configuración por defecto)
    })
  end
}
