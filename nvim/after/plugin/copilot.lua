vim.g.copilot_no_tab_map = true
vim.g.copilot_filetypes = {
  ["TelescopePrompt"] = false,
}
vim.keymap.set("i", "<C-j>", "copilot#Accept('<CR>')", { silent = true, expr = true, replace_keycodes = false, desc = "Accept Copilot" })

