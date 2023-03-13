
-- nvim-tree setup
--local tree = require("nvim-tree").setup({
--  sort_by = "case_sensitive",
--  renderer = {
--    group_empty = true,
--  },
--  filters = {
--    dotfiles = true,
--  },
--  view = {
--      cursorline = true,
--      relativenumber = true,
--      side = "right" 
--  },
--
--  diagnostics = {
--    enable = true,
--    show_on_dirs = true,
--    show_on_open_dirs = true,
--    debounce_delay = 50,
--    severity = {
--      min = vim.diagnostic.severity.HINT,
--      max = vim.diagnostic.severity.ERROR,
--    },
--    icons = {
--      hint = "",
--      info = "",
--      warning = "",
--      error = "",
--    },
--  },
--})


vim.keymap.set('n', '<leader>nt', ':Neotree filesystem reveal right toggle<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<leader>nr', ':Neotree filesystem reveal left toggle<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<leader>nj', ':NeoTreeFocus<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<leader>nf', ':Neotree float<CR>', {noremap = false, silent = true})

-- easymotion
--vim.cmd[[let g:EasyMotion_smartcase = 1]]
--vim.keymap.set('n', 's', ':leap_gs')
--local leap = require('leap')
vim.keymap.set('n', 's', function () require('leap').leap { target_windows = { vim.fn.win_getid() } } end)

