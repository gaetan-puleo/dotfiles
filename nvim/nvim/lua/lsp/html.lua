local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
  client.resolved_capabilities.document_formatting = false
end

return {
	on_attach = on_attach,
  capabilities = capabilities
}

