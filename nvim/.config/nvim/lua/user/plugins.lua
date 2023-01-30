local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/lua/plugins')

-- Plug 'feline-nvim/feline.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'NvChad/nvim-colorizer.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug('AlphaTechnolog/pywal.nvim', {as = 'pywal' })

vim.call('plug#end')
