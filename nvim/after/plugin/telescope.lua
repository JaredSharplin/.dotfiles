local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Find All Files"})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {desc = "Find Git Files"})
vim.keymap.set('n', '<leader>fl', builtin.live_grep, {desc = "Find Live Grep"})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, {desc = "Find Word Under Cursor"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Find Buffers"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "Find Help Tags"})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {desc = "Find Old Files"})
vim.keymap.set('n', '<leader>fc', builtin.commands, {desc = "Find Commands"})

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      "%.rbi",
      "%.png",
      "%.jpg",
      "%.json",
      "%.lock",
      "%.txt",
      "%.x.js",
      "%.x.x.js",
      "db/migrate/.*",
      "config/locales/translation.*.yml"
    },
  }
}

require('telescope').load_extension('fzf')
