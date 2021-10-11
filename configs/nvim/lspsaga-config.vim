lua << EOF
  local saga = require 'lspsaga'

  saga.init_lsp_saga{
   code_action_prompt = {
     enable = true,
     virtual_text = false,
     sign = true,
   },
  }
EOF

nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

nnoremap <silent><leader>gu :Lspsaga lsp_finder<CR>

nnoremap <silent><leader>ca :Lspsaga code_action<CR>

nnoremap <silent><leader>K :Lspsaga hover_doc<CR>

nnoremap <silent><leader>sh :Lspsaga signature_help<CR>

nnoremap <silent><leader>rn :Lspsaga rename<CR>

nnoremap <silent><leader>gp :Lspsaga preview_definition<CR>

nnoremap <silent><leader>e :Lspsaga show_line_diagnostics<CR>
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>

nnoremap <silent> <A-d> :Lspsaga open_floaterm<CR>
tnoremap <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>
