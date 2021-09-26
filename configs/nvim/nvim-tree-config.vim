let g:nvim_tree_hijack_cursor = 0
let g:nvim_tree_auto_close = 1
let g:nvim_tree_tab_open = 1
let g:nvim_tree_lsp_diagnostics = 1
let g:nvim_tree_width=40
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
