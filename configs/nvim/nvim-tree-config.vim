let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "▼",
    \   'arrow_closed': "▶",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }

nnoremap <Leader>tf :NvimTreeFindFile<CR>
nnoremap <Leader>tt :NvimTreeToggle<CR>
nnoremap <Leader>tr :NvimTreeRefresh<CR>


lua << EOF
require'nvim-tree'.setup{
  hijack_cursor = false,
  auto_close = true,
  open_on_tab = true,
  dignostics = {
    enable = true
  },
  view = {
    width = 40
  },
  git = {
    ignore = false
  }
}
EOF
