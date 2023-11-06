-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- navigation
keymap.set("n", "<S-Up>", ":bnext<CR>", { desc = "Switch to next buffer" })
keymap.set("n", "<S-Down>", ":bprevious<CR>", { desc = "Switch to previous buffer" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
