-- set leader key
vim.g.mapleader = ","

vim.opt.syntax = "enable" -- Enables syntax highlighting
vim.opt.ignorecase = true -- search case insensitive
vim.opt.mouse = "a"
vim.opt.smartcase = true -- search by uppercase if told so
vim.opt.incsearch = true -- incremental search
vim.opt.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.opt.encoding = "utf-8" -- The encoding displayed
vim.opt.pumheight = 10 -- Makes popup menu smaller
vim.opt.fileencoding = "utf-8" -- The encoding written to file
vim.opt.ruler = true -- Show the cursor position all the time
vim.opt.cmdheight = 1 -- More space for displaying messages
vim.opt.splitbelow = true -- Horizontal splits will automatically be below
vim.opt.splitright = true -- Vertical splits will automatically be to the right
vim.opt.conceallevel = 0 -- So that I can see `` in markdown files
vim.opt.tabstop = 2 -- Insert 2 spaces for a tab
vim.opt.shiftwidth = 2 -- Change the number of space characters inserted for indentation
vim.opt.smarttab = true -- Makes tabbing smarter will realize you have 2 vs 4
vim.opt.expandtab = true -- Converts tabs to spaces
vim.opt.smartindent = true -- Makes indenting smart
vim.opt.autoindent = true -- Good auto indent
vim.opt.laststatus = 2 -- Always display the status line
vim.opt.number = true -- Line numbers
vim.opt.relativenumber = true -- Add relative number
vim.opt.cursorline = true -- Enable highlighting of the current line
vim.opt.background = "dark" -- tell vim what the background color looks like
vim.opt.showtabline = 2 -- Always show tabs
vim.opt.updatetime = 300 -- Faster completion
vim.opt.timeoutlen = 500 -- By default timeoutlen is 1000 ms
vim.opt.clipboard = "unnamedplus" -- Copy paste between vim and everything else
vim.opt.foldmethod = "syntax" -- Set code folding by language"
vim.opt.foldnestmax = 10
vim.opt.foldlevel = 2

vim.opt.completeopt = {
	"menu",
	"menuone",
	"noinsert",
	"noselect",
}
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4
vim.opt.signcolumn = "yes:1"
vim.opt.list = true

-- highlight on yank
vim.cmd('au TextYankPost * silent! lua vim.highlight.on_yank({ higroup = "IncSearch", timeout = 250 })')

--auto reload
vim.cmd("au FocusGained,BufEnter * :checktime")
--[[
cmap w!! w !sudo tee %
]]
