lua << EOF
  function file_exists(name)
    local f=io.open(name,"r")
    if f~=nil then io.close(f) return true else return false end
  end

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
        -- tsfmt
        function()
          local f = file_exists("node_modules/.bin/prettier")
          if f == false then
            return {
              exe = "node_modules/.bin/tsfmt",
              args = {vim.api.nvim_buf_get_name(0)},
              stdin = true,
            }
          else
            return {
              exe = "node_modules/.bin/prettier",
              args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
              stdin = true,
            }
          end
        end
      },
    }
  })
EOF
