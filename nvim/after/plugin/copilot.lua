vim.g.copilot_no_tab_map = true
vim.g.copilot_filetypes = {
  ["TelescopePrompt"] = false,
}
vim.keymap.set("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true, desc = "Accept Copilot" })

