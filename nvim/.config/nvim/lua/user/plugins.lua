--                         --
--     p l u g - i n s     --
--                         --

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/lua/plugins')

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'NvChad/nvim-colorizer.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug('AlphaTechnolog/pywal.nvim', {as = 'pywal' })
Plug 'nvim-lualine/lualine.nvim'
Plug 'ms-jpq/coq_nvim'
Plug 'ms-jpq/coq.artifacts'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

vim.call('plug#end')

require('lualine').setup({
  options = { theme = 'pywal' }
})

require('pywal').setup()
require("mason").setup()
require("mason-lspconfig").setup()

require('colorizer').setup{
  filetypes = {
    'css',
    'javascript',
  },
}
