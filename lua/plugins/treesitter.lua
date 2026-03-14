return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
      ensure_installed = {
          "lua",
          "javascript",
          "typescript",
          "html",
          "css",
          "bash",
      },

      highlight = {
          enable = true,
      },
  },
}
