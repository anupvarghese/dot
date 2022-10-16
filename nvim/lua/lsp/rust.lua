local lsp = require('lsp-zero')
lsp.preset('recommended')

local rust_lsp = lsp.build_options('rust_analyzer', {})

lsp.setup()

-- Initialize rust_analyzer with rust-tools
require('rust-tools').setup({server = rust_lsp})
