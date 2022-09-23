vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	underline = true,
	virtual_text = {
		prefix = "●",
		spacing = 2,
	},
	update_in_insert = true,
	severity_sort = true,
})

vim.fn.sign_define("LspDiagnosticsSignError", {
	text = "✖",
	numhl = "LspDiagnosticsDefaultError",
})
vim.fn.sign_define("LspDiagnosticsSignWarning", {
	text = "▲",
	numhl = "LspDiagnosticsDefaultWarning",
})
vim.fn.sign_define("LspDiagnosticsSignInformation", {
	text = "●",
	numhl = "LspDiagnosticsDefaultInformation",
})
vim.fn.sign_define("LspDiagnosticsSignHint", {
	text = "✱",
	numhl = "LspDiagnosticsDefaultHint",
})

require("lsp/bash")
require("lsp/json")
require("lsp/lua")
require("lsp/typescript")
require("lsp/go")
