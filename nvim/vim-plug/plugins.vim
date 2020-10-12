" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Theme
    " Plug 'arcticicestudio/nord-vim'
    Plug 'mhartington/oceanic-next'
    " coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " fonts
    Plug 'ryanoasis/vim-devicons'
    " fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " comment things
    Plug 'tpope/vim-commentary'
    " whichkey
    Plug 'liuchengxu/vim-which-key'
    " git gutter
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tommcdo/vim-fubitive'
    Plug 'tommcdo/vim-fugitive-blame-ext'
    Plug 'zivyangll/git-blame.vim'

    " Automatically clear search highlights after you move your cursor.
    Plug 'haya14busa/is.vim'

    " Coc Plugins
    Plug 'weirongxu/coc-explorer'
    Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
    
    " target edits
    Plug 'wellle/targets.vim'
call plug#end()
