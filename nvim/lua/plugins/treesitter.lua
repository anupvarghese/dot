require("nvim-treesitter.configs").setup({
	ensure_installed = { "typescript", "hcl", "bash", "lua", "rust" },
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	incremental_selection = {
		enable = false,
	},
	textobjects = {
		enable = true,
	},
	refactor = {
		highlight_definitions = {
			enable = true,
		},
		highlight_current_scope = {
			enable = false,
		},
		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = "grr",
			},
		},
	},
})
