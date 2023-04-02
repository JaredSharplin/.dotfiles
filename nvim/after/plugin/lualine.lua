local git_blame = require('gitblame')

require("lualine").setup {
  options = {
    theme = "gruvbox-material"
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {
      {
        'filename',
        path = 1
      },
      {
        git_blame.get_current_blame_text,
        cond = git_blame.is_blame_text_available,
      },
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_d = {},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
}
