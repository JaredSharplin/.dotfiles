return {
  'shortcuts/no-neck-pain.nvim',
  version = '*',
  config = function()
    require('no-neck-pain').setup {
      buffers = {
        right = {
          enabled = false,
        },
        scratchPad = {
          enabled = true,
          location = nil,
        },
        bo = {
          filetype = 'md',
        },
      },
      autocmds = { enableOnVimEnter = true },
      mappings = { enabled = true },
    }
  end,
}
