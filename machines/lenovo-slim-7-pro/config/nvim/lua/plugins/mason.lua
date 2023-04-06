-- define new signs
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
})


require("mason").setup()
require("lsp-format").setup {}

require'mason-lspconfig'.setup {

    -- a list of all tools you want to ensure are installed upon
    -- start; they should be the names Mason uses for each tool
    ensure_installed = {
        --lsp
        'html',
        'cssls',
        'cssmodules_ls',
        'vtsls', -- ts
        -- 'tsserver',
        'jsonls',
        -- 'tailwindcss',
        'astro',
        'eslint',
        -- 'emmet-ls',
        -- 'solidity',
        -- linter
        -- formatter
        -- other
    },

    -- if set to true this will check each tool for updates. If updates
    -- are available the tool will be updated.
    -- Default: false
    auto_update = false,

    -- automatically install / update on startup. If set to false nothing
    -- will happen on startup. You can use `:MasonToolsUpdate` to install
    -- tools and check for updates.
    -- Default: true
    run_on_start = true
}


function on_attach(client, bufnr)

  -- mouse actions
  -- vim.keymap.set('n', '<2-LeftMouse>', vim.lsp.buf.definition, { silent = true, noremap = true })
  vim.keymap.set('n', '<C-LeftMouse>', '<LeftMouse>gf', { silent = true, noremap = true })
  vim.keymap.set('n', '<RightMouse>', '<LeftMouse><cmd> lua vim.lsp.buf.hover()<CR>', { silent = true,noremap = true })

  -- keyboard
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { silent = true, noremap = true })
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { silent = true, noremap = true })
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { silent = true, noremap = true })
  vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, {silent = true, noremap = true})

  vim.keymap.set('n', 'K', vim.lsp.buf.signature_help, {silent = true, noremap = true} )
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, { silent = true, noremap = true})


  vim.keymap.set('n', 'gt', vim.lsp.buf.definition, { silent = true, noremap = true })
  vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, { silent = true, noremap = true })
  vim.keymap.set('n', 'gR', vim.lsp.buf.rename, { silent = true, noremap = true })

  require("lsp-format").on_attach(client)
end

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("mason-lspconfig").setup_handlers {
--         -- The first entry (without a key) will be the default handler
--         -- and will be called for each installed server that doesn't have
--         -- a dedicated handler.
  function (server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,

}


