local map = vim.api.nvim_set_keymap

-- nvim tree
map("n", "<Space>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
map("n", "<Leader>r", ":NvimTreeRefresh<CR>", { noremap = true, silent = true })

-- clear search
map("n", "<Leader><Space>", ":let @/=''<CR>", { noremap = false, silent = true })

-- Save
map("n", "<C-s>", ":w<CR>", { noremap = true, silent = false })
-- Save and Quit
map("n", "<C-q>", ":wq!<CR>", { noremap = true, silent = false })

-- Better tabbing
map("v", "<", "<gv", { noremap = true, silent = true })
map("v", ">", ">gv", { noremap = true, silent = true })

-- disable dead keys
map("v", "<Up>", "<Nop>", { noremap = true, silent = true })
map("v", "<Down>", "<Nop>", { noremap = true, silent = true })
map("v", "<Left>", "<Nop>", { noremap = true, silent = true })
map("v", "<Right>", "<Nop>", { noremap = true, silent = true })

map("i", "<Up>", "<Nop>", { noremap = true, silent = true })
map("i", "<Down>", "<Nop>", { noremap = true, silent = true })
map("i", "<Left>", "<Nop>", { noremap = true, silent = true })
map("i", "<Right>", "<Nop>", { noremap = true, silent = true })

map("n", "<Up>", "<Nop>", { noremap = true, silent = true })
map("n", "<Down>", "<Nop>", { noremap = true, silent = true })
map("n", "<Left>", "<Nop>", { noremap = true, silent = true })
map("n", "<Right>", "<Nop>", { noremap = true, silent = true })
map("n", "Q", "<Nop>", { noremap = true, silent = true })
map("n", "<C-z>", "<Nop>", { noremap = true, silent = true })

-- TAB in general mode will move to text buffer
map("n", "<TAB>", ":bnext<CR>", { noremap = true, silent = true })
map("n", "<S-TAB>", ":bprevious<CR>", { noremap = true, silent = true })

-- close an opened buffer
map("n", "<Leader>q", ":bw<CR>", { noremap = true, silent = true })
