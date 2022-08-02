local lsp_config = require("lspconfig")
local on_attach, lsp_flags, capabilities = require("lsp/on_attach")()

lsp_config.jsonls.setup({
	on_attach = function(client)
		client.resolved_capabilities.document_formatting = false
		on_attach(client)
	end,
	flags = lsp_flags,
	capabilities = capabilities
})
