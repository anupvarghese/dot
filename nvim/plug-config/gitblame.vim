call nvimblamer#auto()

lua <<EOF
require'nvim-blamer'.setup({
    enable = true,
    format = '%committer │ %committer-time-human │ %summary',
})
EOF

