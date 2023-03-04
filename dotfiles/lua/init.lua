
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require('mappings')
require('lsp')
require('aesthetics')
require('mappings')
require('general')
require('plugins')
require('setup')
require('treesitter')
require('tele')
require('gitgutter')
