local capabilities = vim.lsp.protocol.make_client_capabilities()
local on_attach = function(client, bufnr)

  client.resolved_capabilities.document_formatting = false

end
local opts = {
	capabilities = capabilities,	
	on_attach = on_attach,
}
return opts
