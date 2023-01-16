call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }
Plug 'NvChad/nvim-colorizer.lua'
Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

colorscheme pywal

lua require 'colorizer'.setup()
lua require ("indent_blankline").setup {show_end_of_line = true,}

" airline config
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

let g:airline_theme = 'random'

" vim opts
set number
syntax on
set title
set tabstop=4
set shiftwidth=4
set expandtab
set list
set termguicolors

