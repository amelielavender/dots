--                         --
-- ~/.config/nvim/init.lua --
--                         --

require('user.settings')
require('user.plugins')
require('user.highlights')

local coq = require'coq'
local lsp = require'lspconfig'

-- language servers 

lsp.pyright.setup{}
lsp.html.setup{
  coq.lsp_ensure_capabilities()
}
lsp.lua_ls.setup{
  coq.lsp_ensure_capabilities()
}
lsp.ccls.setup{}
lsp.sqlls.setup{}
lsp.tsserver.setup{}
lsp.tailwindcss.setup{}
lsp.emmet_language_server.setup{
  coq.lsp_ensure_capabilities()
}
