return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
  keys = {
    {
      "<leader>fw",
      -- require("telescope.builtin").grep_string,
      function()
        require("telescope.builtin").grep_string()
      end,
      desc = "Find Word Under Cursor",
    },
  },
  opts = {
    setup = function()
      require("telescope").setup({
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
            "config/locales/translation.*.yml",
          },
        },
      })
    end,
  },
}
