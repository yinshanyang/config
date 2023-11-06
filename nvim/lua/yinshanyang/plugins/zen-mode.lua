local wrap = vim.opt.wrap

return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      backdrop = 1,
      width = 80,
    },
    on_open = function (win)
      vim.opt.wrap = true
    end,
    on_close = function ()
      vim.opt.wrap = wrap
    end,
  },
}
