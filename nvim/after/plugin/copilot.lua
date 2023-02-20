vim.g.copilot_no_tab_map = true
vim.g.copilot_filetypes = {
  ["TelescopePrompt"] = false,
}

-- replace_keycodes = false is needed to avoid insertion of weird characters
-- https://github.com/community/community/discussions/29817#discussioncomment-4217615
vim.keymap.set("i", "<C-j>", "copilot#Accept('<CR>')", { silent = true, expr = true, replace_keycodes = false, desc = "Accept Copilot" })

