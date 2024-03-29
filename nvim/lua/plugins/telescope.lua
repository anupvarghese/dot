local actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
		prompt_prefix = "🔭 ",
		selection_caret = "> ",
		color_devicons = true,
		mappings = {
			i = {
				["<Esc>"] = actions.close,
				["<C-n>"] = actions.move_selection_next,
				["<C-p>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-c>"] = actions.close,
				["<Down>"] = actions.move_selection_next,
				["<Up>"] = actions.move_selection_previous,
				["<CR>"] = actions.select_default + actions.center,
				["<C-x>"] = actions.select_horizontal,
				["<C-v>"] = actions.select_vertical,
				["<C-u>"] = actions.preview_scrolling_up,
				["<C-d>"] = actions.preview_scrolling_down,
			},
			n = {
				["<Esc>"] = actions.close,
				["<CR>"] = actions.select_default + actions.center,
				["<C-x>"] = actions.select_horizontal,
				["<C-v>"] = actions.select_vertical,
				["j"] = actions.move_selection_next,
				["k"] = actions.move_selection_previous,
				["<Down>"] = actions.move_selection_next,
				["<Up>"] = actions.move_selection_previous,
				["<C-u>"] = actions.preview_scrolling_up,
				["<C-d>"] = actions.preview_scrolling_down,
			},
		},
		file_ignore_patterns = {
			".git/*",
			"node_modules/*",
			".DS_Store",
		},
		layout_strategy = "flex",
		scroll_strategy = "cycle",
	},
	pickers = {
		find_files = {
			theme = "dropdown",
		},
		git_files = {
			theme = "dropdown",
		},
		live_grep = {
			theme = "dropdown",
			previewer = false,
		},
		file_browser = {
			theme = "dropdown",
			previewer = false,
		},
	},
})

vim.api.nvim_set_keymap(
	"n",
	"<C-f>",
	'<cmd>lua require("telescope.builtin").find_files()<CR>',
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<Leader>g",
	'<cmd>lua require("telescope.builtin").live_grep()<CR>',
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<Leader>b",
	'<cmd>lua require("telescope.builtin").buffers()<CR>',
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<Leader>m",
	'<cmd>lua require("telescope.builtin").marks()<CR>',
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<Leader>r",
	'<cmd>lua require("telescope.builtin").resume()<CR>',
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<Leader>gd",
	'<cmd>lua require("telescope.builtin").git_bcommits()<CR>',
	{ noremap = true, silent = true }
)

