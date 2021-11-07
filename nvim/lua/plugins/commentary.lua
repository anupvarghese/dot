local map = vim.api.nvim_set_keymap

map("n", "<Space>/", ":Commentary<CR>", { noremap = true, silent = true })
map("v", "<Space>/", ":Commentary<CR>", { noremap = true, silent = true })
