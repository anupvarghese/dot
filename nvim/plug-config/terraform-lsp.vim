" brew install hashicorp/tap/terraform-ls
lua << EOF
require'lspconfig'.terraformls.setup{}
EOF
