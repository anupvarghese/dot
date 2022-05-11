local null = require("null-ls")
local builtins = null.builtins

null.setup({
	sources = {
		builtins.diagnostics.eslint_d,
		builtins.formatting.prettier,
	},
})

