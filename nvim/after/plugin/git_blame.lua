vim.keymap.set("n", "<leader>b", ":GitBlameOpenCommitURL<CR>", {desc = "Open Git Blame Commit URL"})

vim.g.gitblame_display_virtual_text = 0
vim.g.gitblame_date_format = "%b %d, %Y"
vim.g.gitblame_message_template = "<author> • <date>"
