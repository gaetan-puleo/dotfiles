
local on_attach = function(client, bufnr)
  -- Mappings.
  local opts = { noremap=true, silent=true }


  client.resolved_capabilities.document_formatting = false

end
local opts = {
		on_attach = on_attach,
}
return opts
