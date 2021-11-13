function file_exists(name)
	local f = io.open(name, "r")
	if f ~= nil then
		io.close(f)
		return true
	else
		return false
	end
end

local prettier = function()
	local f = file_exists("node_modules/.bin/prettier")
	if f == false then
		return {
			exe = "node_modules/.bin/tsfmt",
			args = { vim.api.nvim_buf_get_name(0) },
			stdin = true,
		}
	else
		return {
			exe = "node_modules/.bin/prettier",
			args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
			stdin = true,
		}
	end
end

local rustfmt = function()
	return {
		exe = "rustfmt",
		args = {
			"--emit=stdout",
		},
		stdin = true,
	}
end

local stylua = function()
	return {
		exe = "stylua",
		args = { "--search-parent-directories", "-" },
		stdin = true,
	}
end

local gofmt = function()
	return {
		exe = "gofmt",
		args = { vim.api.nvim_buf_get_name(0) },
		stdin = true,
	}
end

require("formatter").setup({
	logging = false,
	filetype = {
		javascript = {
			prettier,
		},
		javascriptreact = {
			prettier,
		},
		typescript = {
			prettier,
		},
		typescriptreact = {
			prettier,
		},
		css = {
			prettier,
		},
		less = {
			prettier,
		},
		sass = {
			prettier,
		},
		scss = {
			prettier,
		},
		yaml = {
			prettier,
		},
		html = {
			prettier,
		},
		rust = {
			rustfmt,
		},
		lua = {
			stylua,
		},
		go = {
			gofmt,
		},
	},
})

vim.api.nvim_exec(
	[[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.yaml,*.html,*.rs,*.lua FormatWrite
augroup END
]],
	true
)
