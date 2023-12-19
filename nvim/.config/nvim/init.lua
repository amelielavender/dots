--                         --
-- ~/.config/nvim/init.lua --
--                         --

require('user.settings')
require('user.plugins')
require('user.highlights')
require('lspconfig').pyright.setup{}
require('lspconfig').html.setup{}
require('lspconfig').lua_ls.setup{}
require('lspconfig').ccls.setup{}
require('lspconfig').sqlls.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.emmet_language_server.setup{
  init_options = {
    showSuggestionsAsSnippets = false,
  },
}
