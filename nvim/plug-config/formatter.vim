lua << EOF
  vim.api.nvim_exec([[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost *.ts FormatWrite
  augroup END
  ]], true)
  require('formatter').setup({
    logging = false,
    filetype = {
      typescript = {
        -- prettierd
        function()
            return {
              exe = "prettierd",
              args = {vim.api.nvim_buf_get_name(0)},
              stdin = true
            }
          end
      }
    }
  })
EOF
