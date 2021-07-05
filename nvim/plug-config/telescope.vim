" nvim-telescope/telescope.nvim

lua << EOF
_G.telescope_find_files_in_path = function(path)
 local _path = path or vim.fn.input("Dir: ", "", "dir")
 require("telescope.builtin").find_files({search_dirs = {_path}})
end
EOF

lua << EOF
_G.telescope_live_grep_in_path = function(path)
 local _path = path or vim.fn.input("Dir: ", "", "dir")
 require("telescope.builtin").live_grep({search_dirs = {_path}})
end
EOF

lua << EOF
  require('telescope').setup {
    pickers = {
      find_files = {
        theme = "dropdown",
        mappings = {
          i = {
            ["<c-x>"] = require('telescope.actions').select_horizontal,
            ["<c-v>"] = require('telescope.actions').select_vertical,
          },
        }
      }
    },
    extensions = {
      fzf_writer = {
        minimum_grep_characters = 2,
        minimum_files_characters = 2,

        -- Disabled by default.
        -- Will probably slow down some aspects of the sorter, but can make color highlights.
        -- I will work on this more later.
        use_highlighter = true,
      }
    }
  }

  require('telescope').load_extension('fzy_native')
EOF

nnoremap <leader>g :lua require('telescope').extensions.fzf_writer.staged_grep()<CR>
nnoremap <leader><fG :Telescope git_files<CR>
nnoremap <leader>fd :lua telescope_find_files_in_path()<CR>
nnoremap <leader>fD :lua telescope_live_grep_in_path()<CR>
nnoremap <leader>ft :lua telescope_find_files_in_path("./tests")<CR>
nnoremap <leader>fT :lua telescope_live_grep_in_path("./tests")<CR>
nnoremap <leader>fo :Telescope file_browser<CR>
nnoremap <C-f> :Telescope find_files<CR>
nnoremap <leader>fg :Telescope git_branches<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>fs :Telescope lsp_document_symbols<CR>
" nnoremap <leader>g :Telescope live_grep<CR>
nnoremap <leader>FF :Telescope grep_string<CR>
