" install npm i -g typescript-language-server
lua << EOF
require'lspconfig'.tsserver.setup{}
EOF
