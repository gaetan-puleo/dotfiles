-- Copy files from https://github.com/neovim/nvim-lspconfig/tree/master/lsp in lsp folder
-- Then add the server name to the enable list
vim.lsp.enable({
  "html",
  'ts_ls',
  'cssls',
  'jsonls',
})

vim.api.nvim_create_autocmd("LspAttach", {
  desc = "LSP keymaps",
  callback = function(event)
    local opts = { buffer = event.buf }
    local map = vim.keymap.set
    map("n", "gD", vim.lsp.buf.declaration, opts)
    map("n", "gd", vim.lsp.buf.definition, opts)
    map("n", "K", vim.lsp.buf.hover, opts)
    map("n", "gi", vim.lsp.buf.implementation, opts)
    map("n", "gt", vim.lsp.buf.type_definition, opts)
    map("n", "gr", vim.lsp.buf.references, opts)
    map("n", "gR", vim.lsp.buf.rename, opts)
    map("n", "<leader>la", vim.lsp.buf.code_action, opts)
    map("n", "<leader>lf", function() vim.lsp.buf.format { async = true } end, opts)
  end,
})
