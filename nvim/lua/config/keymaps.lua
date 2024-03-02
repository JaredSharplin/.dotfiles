-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- TODO: Find a an unused mapping for this
-- vim.keymap.set(
--   "n",
--   "<leader>s",
--   [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
--   { desc = "Search and Replace" }
-- )

vim.keymap.set("n", "<leader>n", ":e ~/programming/payaus/.notes.md<CR>", { desc = "Open Payaus Todo File" })
