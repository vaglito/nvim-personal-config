return {
  {
    "baliestri/aura-theme",
    lazy = true,
    priority = 1000,
    colors = { "aura-dark" },
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      -- vim.cmd([[colorscheme aura-dark]])
    end
  }
}
