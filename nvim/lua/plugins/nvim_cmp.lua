return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    opts.sources = {
      {
        name = "copilot",
        group_index = 1,
        priority = 100,
      },
    }
  end,
}
