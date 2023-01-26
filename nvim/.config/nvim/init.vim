call plug#begin('~/.local/share/nvim/plugged')
Plug 'feline-nvim/feline.nvim'
Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }
Plug 'NvChad/nvim-colorizer.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()
colorscheme pywal

lua require('feline').setup()
lua require 'colorizer'.setup()
lua require ("indent_blankline").setup {show_end_of_line = true,}
" vim opts
set number
syntax on
set title
set tabstop=4
set shiftwidth=4
set expandtab
set list
set termguicolors
