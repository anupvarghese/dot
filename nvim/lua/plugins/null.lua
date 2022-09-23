local null = require("null-ls")
local builtins = null.builtins
local formatting = null.builtins.formatting

null.setup({
	debug = false,
	sources = {
		formatting.eslint_d,
		formatting.prettierd.with({
			filetypes = {
				"css",
				"scss",
				"less",
				"html",
				"json",
				"yaml",
				"markdown",
				"graphql",
			},
		}),
		formatting.stylua,
	},
})

