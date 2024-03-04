return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "RRethy/nvim-treesitter-endwise" },
  opts = function(_, opts)
    opts.endwise = { enable = true }
    opts.indent = { enable = true, disable = { "yaml", "ruby" } }
    opts.hidesig = {
      enable = true,
      opacity = 0.75,
      delay = 200,
    }
    opts.ensure_installed = {
      "bash",
      "embedded_template",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "ruby",
      "tsx",
      "typescript",
      "vim",
      "yaml",
    }
  end,
}
