" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
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
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

    " Plenary
    Plug 'nvim-lua/plenary.nvim'

    " Popup
    Plug 'nvim-lua/popup.nvim'

    " Tree sitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " NvimTree
    Plug 'kyazdani42/nvim-web-devicons' " for file icons
    Plug 'kyazdani42/nvim-tree.lua'

    " Nvim completion
    Plug 'hrsh7th/nvim-compe'

    "Theme
    Plug 'Mofiqul/vscode.nvim'
    Plug 'akinsho/nvim-bufferline.lua'

    "LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'

    "Formatter
    Plug 'mhartington/formatter.nvim'

    "git
    Plug 'lewis6991/gitsigns.nvim'

    "status line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "Autopairs
    Plug 'jiangmiao/auto-pairs'
call plug#end()
