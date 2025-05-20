-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- navigation
keymap.set("n", "<D-}>", ":bnext<CR>", { desc = "Switch to next buffer" })
keymap.set("n", "<D-{>", ":bprevious<CR>", { desc = "Switch to previous buffer" })
keymap.set("n", "<D-w>", ":bd<CR>", { desc = "Switch to previous buffer" })

keymap.set("i", "<D-/>", "<c-o>:normal gcc<CR>")
keymap.set("n", "<D-/>", ":normal gcc<CR>")

-- misc
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
