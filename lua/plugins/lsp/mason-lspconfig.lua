return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
  },
  opts = {
    ensure_installed = {
        -- tell mason which lsp to install here
    },
    automatic_installation = true,
  },
}
