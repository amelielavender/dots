--                         --
--     s e t t i n g s     --
--                         --

-- line numbers, wrapping, navigation
vim.cmd('set number relativenumber')
vim.cmd('set colorcolumn=80')
vim.wo.wrap = true
vim.wo.linebreak = true

-- lets vim set title of current window
vim.opt.title = true

-- tab spacing opts
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- colors
vim.opt.termguicolors = true

-- tell vim i'm using a light-colored bg
-- vim.opt.background = 'light'

-- splits to the right and below 
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.g.coq_settings = {
  auto_start = true,
}
