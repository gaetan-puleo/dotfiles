return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    -- "neovim/nvim-lspconfig",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  lazy = false,
  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup {
      ensure_installed = {
        "html",
        'ts_ls',
        'jsonls',
        'cssls',
      },
    }


    -- local lspconfig = require("lspconfig")
    -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
    --
    -- vim.api.nvim_create_autocmd("LspAttach", {
    --   desc = "LSP keymaps",
    --   callback = function(event)
    --     local opts = { buffer = event.buf }
    --     local map = vim.keymap.set
    --     map("n", "gD", vim.lsp.buf.declaration, opts)
    --     map("n", "gd", vim.lsp.buf.definition, opts)
    --     map("n", "K", vim.lsp.buf.hover, opts)
    --     map("n", "gi", vim.lsp.buf.implementation, opts)
    --     map("n", "gt", vim.lsp.buf.type_definition, opts)
    --     map("n", "gr", vim.lsp.buf.references, opts)
    --     map("n", "gR", vim.lsp.buf.rename, opts)
    --     map("n", "<leader>la", vim.lsp.buf.code_action, opts)
    --     map("n", "<leader>lf", function() vim.lsp.buf.format { async = true } end, opts)
    --   end,
    -- })
  end,
}
