
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require('plugins')
require('mappings')
require('lsp')
require('aesthetics')
require('mappings')
require('general')
require('setup')
require('treesitter')
require('tele')
require('gitgutter')
require('dapmeup')
require('tterm')
require('indentinglines')
require('introuble')
require('statline')
require('nulll')
require('gitsign')
require('winbar')
require('over')


if vim.g.neovide then
    vim.g.neovide_cursor_trail_size = 0.3
    vim.g.transparency = 0.8
end

