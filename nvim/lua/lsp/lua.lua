local lsp_config = require("lspconfig")
local on_attach, lsp_flags, capabilities = require("lsp/on_attach")()

lsp_config.sumneko_lua.setup({
	single_file_support = true,
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				enable = true,
				globals = {
					"vim",
					"describe",
					"it",
					"before_each",
					"after_each",
				},
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
				},
			},
		},
	},
})
