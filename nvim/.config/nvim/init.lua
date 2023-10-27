--                         --
-- ~/.config/nvim/init.lua --
--                         --

require('user.settings')
require('user.plugins')
require('user.highlights')
require('lspconfig').pyright.setup{}
require('lspconfig').html.setup{}
