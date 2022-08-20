-- require('lsp/cssls')
-- require('lsp/tsserver')
-- require('lsp/jsonls')
-- require('lsp/graphql')
local nvim_lsp = require('lspconfig')
local configs = require'lspconfig/configs'    
-- require'lspinstall'.setup() -- important
-- local servers = {'tsserver', 'cssls' , 'jsonls', 'graphql'}


vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = true,
})

-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.o.updatetime = 250
--vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float()]]

-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
-- vim.o.updatetime = 250
-- vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})]]

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
	
   --Enable completion triggered by <c-x><c-o>
  -- buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  -- buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  -- buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  -- buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  -- buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  -- buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  -- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  -- buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  -- buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  -- buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  -- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  -- buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  -- buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  -- buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  -- buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  -- buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
 -- buf_set_keymap('n','gh', '<cmd>lua require(\'lspsaga.provider\').lsp_finder()<CR>', opts)
 -- buf_set_keymap('n','ca', '<cmd>lua require(\'lspsaga.codeaction\').code_action()<CR>', opts)
 -- buf_set_keymap('v','ca', '<cmd>lua require(\'lspsaga.codeaction\').range_code_action()<CR>', opts)
 -- buf_set_keymap('n','K' , '<cmd>lua require(\'lspsaga.hover\').render_hover_doc()<CR>', opts)
 -- buf_set_keymap('n','gR', '<cmd>lua require(\'lspsaga.rename\').rename()<CR>', opts)
 -- buf_set_keymap('n','gs', '<cmd>lua require(\'lspsaga.signaturehelp\').signature_help()<CR>', opts)

end

-- config that activates keymaps and enables snippet support
-- local function make_config()
--   local capabilities = vim.lsp.protocol.make_client_capabilities()
--   capabilities.textDocument.completion.completionItem.snippetSupport = true
--   return {
--     -- enable snippet support
--     capabilities = capabilities,
--     -- map buffer local keybindings when the language server attaches
--     on_attach = on_attach,
--   }
-- end


-- if not nvim_lsp.emmet_ls then    
--   configs.emmet_ls = {    
--     default_config = {    
--       cmd = {'emmet-ls', '--stdio'};
--       filetypes = {'html', 'css', 'scss'};
--       root_dir = function(fname)    
--         return vim.loop.cwd()
--       end;    
--       settings = {};    
--     };    
--   }    
-- end

-- local function setup_servers()
--   -- local servers = {'typescript', 'bash', 'json', 'css', 'graphql', 'html', 'diagnosticls'}
--   -- local servers = {'tsserver', 'bashls', 'jsonls', 'cssls', 'graphql', 'html', 'diagnosticls'}
--   -- local servers = {'tsserver', 'jsonls', 'cssls', 'graphql', 'html'}
--   local servers = {'tsserver', 'html', 'emmet_ls', 'tailwindcss', 'jsonls', 'cssls', 'bashls'}

--   for _, server in pairs(servers) do

--   local path = 'lsp/' .. server
--   local config = require(path)
--     config['flags'] = {
--       debounce_text_changes = 250,
--     }
--     nvim_lsp[server].setup(config)
    
--   end
-- end

-- setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
-- require'lspinstall'.post_install_hook = function ()
--   setup_servers() -- reload installed servers
--   vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
-- end
