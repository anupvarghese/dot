let g:vscode_style = "dark"
colorscheme tokyonight

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "typescript", "hcl" },
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
  indent = {
    enable = true
  }
}
EOF

set foldmethod=expr
setlocal foldlevelstart=99
