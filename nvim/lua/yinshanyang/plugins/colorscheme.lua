return {
  {
    "nordtheme/vim",
    priority = 1000, -- load before everything
    config = function ()
      vim.cmd([[colorscheme nord]])
    end,
  },
}
