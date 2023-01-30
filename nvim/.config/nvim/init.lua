--                         --
-- ~/.config/nvim/init.lua --
--                         --

require('user.plugins')

-- line numbers
vim.opt.number = true

-- lets vim set title of current window
vim.opt.title = true

-- tab spacing opts
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- colors
vim.opt.termguicolors = true
-- im definitely going to forget to change this when needed arent i
vim.opt.background = 'light'

-- not in my original but i liked it so i stole it 
vim.opt.splitright = true
vim.opt.splitbelow = true
