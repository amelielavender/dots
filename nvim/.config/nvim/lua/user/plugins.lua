--                         --
--     p l u g - i n s     --
--                         --

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/lua/plugins')

Plug 'feline-nvim/feline.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'NvChad/nvim-colorizer.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug('AlphaTechnolog/pywal.nvim', {as = 'pywal' })

vim.call('plug#end')

require('colorizer').setup()

local uwu = {
    fg = '#997777',
    bg = '#e6caca',
    black ='#5c5c8a',
    skyblue = '#595e85',
    cyan = '#556a80',
    green = '#628080',
    oceanblue = '#bf95a6',
    magenta = '#99677b',
    orange = '#fabd2f',
    red = '#99677b',
    violet = '#77608f',
    white = '#e6caca',
    yellow = '#d79921',
}

require('feline').setup({
    theme = uwu 
})

require('pywal').setup()
