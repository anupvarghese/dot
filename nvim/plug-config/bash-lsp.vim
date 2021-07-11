" npm i -g bash-language-server
lua << EOF
require'lspconfig'.bashls.setup{}
EOF
