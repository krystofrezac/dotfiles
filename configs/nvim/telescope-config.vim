nnoremap <Leader>b <CMD>Telescope buffers<CR>
nnoremap <Leader>lg <CMD>Telescope live_grep<CR>

lua << EOF
  local actions = require('telescope.actions')
  require('telescope').setup{
    defaults = {
      mappings = {
        i = {
          ["kj"] = actions.close
        }
      }
    },
    extensions = {
      fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = false, -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
      }
    }
  }
  require('telescope').load_extension('fzf')
  vim.api.nvim_set_keymap('n', '<Leader>f', ':lua require"telescope.builtin".find_files({ hidden = true })<CR>', {noremap = true, silent = true})
EOF
