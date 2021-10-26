vim.fn["nvimblamer#auto"]()
require("nvim-blamer").setup({
	enable = true,
	format = "%committer │ %committer-time-human │ %summary",
})
