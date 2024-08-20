return {
  'nvim-pack/nvim-spectre',
  config = function()
    require('spectre').setup()

    vim.keymap.set('n', '<leader>Sp', '<cmd>lua require("spectre").toggle()<CR>', { desc = 'Toggle [Sp]ectre' })
    vim.keymap.set('n', '<leader>Sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { desc = '[S]pectre search current [w]ord' })
    vim.keymap.set('v', '<leader>Sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', { desc = '[S]pectre search current [w]ord' })
    vim.keymap.set('n', '<leader>Sf', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', { desc = '[S]earch on current [f]ile' })
  end,
}
