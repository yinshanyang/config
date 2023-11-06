return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    local colors = {
      blue = "#5e81ac",
      green = "#a3be8c",
      violet = "#b48ead",
      yellow = "#ebcb8b",
      red = "#bf616a",
      fg = "#eceff4",
      bg = "#2e3440",
      inactive_fg = "#4c566a",
      inactive_bg = "#3b4252",
    }

    local theme = {
      normal = {
        a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.inactive_fg },
        c = { bg = colors.inactive_bg, fg = colors.fg },
      },
      insert = {
        a = { bg = colors.green, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.inactive_fg },
        c = { bg = colors.inactive_bg, fg = colors.fg },
      },
      visual = {
        a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.inactive_fg },
        c = { bg = colors.inactive_bg, fg = colors.fg },
      },
      command = {
        a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.inactive_fg },
        c = { bg = colors.inactive_bg, fg = colors.fg },
      },
      replace = {
        a = { bg = colors.red, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.inactive_fg },
        c = { bg = colors.inactive_bg, fg = colors.fg },
      },
      inactive = {
        a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
        b = { bg = colors.bg, fg = colors.inactive_fg },
        c = { bg = colors.inactive_bg, fg = colors.semilightgray },
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = theme,
      },
      sections = {
        lualine_b = {},
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = colors.fg },
          },
        },
        lualine_y = { "location" },
        lualine_z = { "progress" },
      },
    })
  end,
}
