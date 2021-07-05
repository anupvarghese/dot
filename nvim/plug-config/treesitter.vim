let g:vscode_style = "dark"
colorscheme vscode

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "typescript" },
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
  indent = {
    enable = true
  }
}
EOF

set foldmethod=expr
setlocal foldlevelstart=99
set foldexpr=nvim_treesitter#foldexpr()