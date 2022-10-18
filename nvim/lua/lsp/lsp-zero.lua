local lsp = require("lsp-zero")

lsp.set_preferences({
	suggest_lsp_servers = true,
	setup_servers_on_start = true,
	set_lsp_keymaps = true,
	configure_diagnostics = true,
	cmp_capabilities = true,
	manage_nvim_cmp = true,
	call_servers = "local",
	sign_icons = {
		error = "✘",
		warn = "▲",
		hint = "⚑",
		info = "",
	},
})

require("mason.settings").set({
	ui = {
		border = "rounded",
	},
})

require("mason-tool-installer").setup({
	ensure_installed = { "codelldb", "stylua", "shfmt", "shellcheck", "black", "isort", "prettierd" },
	auto_update = false,
	run_on_start = true,
})

require("mason-nvim-dap").setup({
	ensure_installed = { "node2" },
})

local dap = require("dap")

require("mason-nvim-dap").setup_handlers({
	function(source_name)
		-- all sources with no handler get passed here
	end,
	typescript = function()
		dap.adapters.node2 = {
			type = "executable",
			command = "node",
		}
		dap.configurations.typescript = {
			{
				name = "Launch",
				type = "node2",
				request = "launch",
				program = "${file}",
				cwd = vim.fn.getcwd(),
				sourceMaps = true,
				protocol = "inspector",
				console = "integratedTerminal",
			},
			{
				-- For this to work you need to make sure the node process is started with the `--inspect` flag.
				name = "Attach to process",
				type = "node2",
				request = "attach",
				processId = require("dap.utils").pick_process,
			},
		}
	end,
})

lsp.setup()
