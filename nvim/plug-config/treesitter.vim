let g:vscode_style = "dark"
colorscheme vscode

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  }
}
EOF

set foldmethod=expr
setlocal foldlevelstart=99
set foldexpr=nvim_treesitter#foldexpr()