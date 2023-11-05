-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')

lsp.preset('recommended')

-- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({select = true}),
  ['<C-d>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<C-e>'] = cmp.mapping.close(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil
cmp_mappings['<CR>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

local function set_keymaps(bufnr)
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end,  {buffer = bufnr, remap = false, desc = "Goto Definition"})
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, {buffer = bufnr, remap = false, desc = "Hover"})
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, {buffer = bufnr, remap = false, desc = "Workspace Symbol"})
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, {buffer = bufnr, remap = false, desc = "Open Diagnostics"})
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, {buffer = bufnr, remap = false, desc = "Goto Next Diagnostic"})
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, {buffer = bufnr, remap = false, desc = "Goto Previous Diagnostic"})
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, {buffer = bufnr, remap = false, desc = "Code Action"})
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, {buffer = bufnr, remap = false, desc = "References"})
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, {buffer = bufnr, remap = false, desc = "Rename"})
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, {buffer = bufnr, remap = false, desc = "Signature Help"})
  vim.keymap.set("n", "<leader>vy", function() vim.diagnostic.setqflist() end, {buffer = bufnr, remap = false, desc = "Set Quickfix List"})
end

lsp.on_attach(function(client, bufnr)
  set_keymaps(bufnr)
end)

-- Flow is not available in mason, so we need to install it manually
require('lspconfig').flow.setup({
  on_attach = function(client, bufnr)
    set_keymaps(bufnr)
  end
})

lsp.setup()

