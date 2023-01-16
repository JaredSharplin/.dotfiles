vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = "Open NetRW"})
vim.keymap.set("n", "<leader>w", ":w<CR>", {desc = "Write"})
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", {desc = "Open LazyGit"})

