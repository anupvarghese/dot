" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif



call plug#begin('~/.config/nvim/autoload/plugged')
    " comment things
    Plug 'tpope/vim-commentary'

    " Modify * to also work with visual selections.
    Plug 'nelstrom/vim-visual-star-search'

    " Indentguide
    Plug 'thaerkh/vim-indentguides'

    " better whitespaces
    Plug 'ntpeters/vim-better-whitespace'

    " Telescope
    Plug 'romgrk/fzy-lua-native', { 'do': 'make' }
    Plug 'nvim-telescope/telescope-fzf-writer.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

    " Plenary
    Plug 'nvim-lua/plenary.nvim'

    " Popup
    Plug 'nvim-lua/popup.nvim'

    " NvimTree
    Plug 'kyazdani42/nvim-web-devicons' " for file icons
    Plug 'kyazdani42/nvim-tree.lua'

    " Nvim completion
    Plug 'nvim-lua/completion-nvim'

    "Theme
    Plug 'Mofiqul/vscode.nvim'
    Plug 'akinsho/nvim-bufferline.lua'

    "LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim'

    " Tree sitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    "Formatter
    Plug 'mhartington/formatter.nvim'

    "git
    Plug 'lewis6991/gitsigns.nvim'

    "themes & status line
    Plug 'projekt0n/github-nvim-theme'
    Plug 'hoob3rt/lualine.nvim'

    "Autopairs
    Plug 'jiangmiao/auto-pairs'

call plug#end()
