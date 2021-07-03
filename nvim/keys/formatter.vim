nnoremap <silent> <leader>f :Format<CR>
lua << EOF
  local prettier = function()
    return {
      exe = "prettier",
      args = {"--stdin", "--stdin-filepath", vim.api.nvim_buf_get_name(0)},
      stdin = true
    }
  end

  require("formatter").setup{
    filetype = {
      javascript = {prettier},
      typescript = {prettier},
      typescriptreact = {prettier},
    }
  }

  vim.api.nvim_exec([[
    augroup FormatAutogroup
      autocmd!
      autocmd BufWritePost *.js,*.rs,*.lua FormatWrite
    augroup END
  ]], true)
EOF
