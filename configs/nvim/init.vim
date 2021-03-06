let mapleader="\<Space>"

set termguicolors

lua require("packer-config")
lua require("lsp-config")
lua require("lualine-config")
lua require("todo-comments-config")
lua require("nvim-compe-config")
lua require("barbar-config")
lua require("nvim-colorizer-config")
lua require("snippets/index")

runtime telescope-config.vim
runtime nvim-tree-config.vim
runtime vim-rainbow-config.vim
runtime vim-jsx-typescript-config.vim

" Mac compe height
set pumheight=15

" No line wrapping
set nowrap

" File name
set title
set titlestring=%F

" Buffers
set hidden

" Clipboard
set clipboard+=unnamedplus

" Disable arrows
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

inoremap <Esc> <Nop>

" Line numbers
set number relativenumber

"Map escape 
inoremap kj <Esc>
vnoremap kj <Esc>
cnoremap kj <C-C><Esc>

inoremap <Esc> <Nop>
vnoremap <Esc> <Nop> 

" Map new line without insert mode
nnoremap oo o<Esc>
nnoremap OO O<Esc>

" Theme
colorscheme onedark

" TAB
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Spell
set spell spelllang=en_us

" Add _ as word separator
set iskeyword-=_ 

lua require'snippets'.use_suggested_mappings()
