
vim.opt.encoding="UTF-8"
vim.cmd([[set showtabline=2]])
vim.cmd([[set completeopt=menu]])
vim.cmd([[set mouse=a]])

vim.cmd([[set scrolloff=8]])
vim.cmd([[set laststatus=3]])
vim.cmd([[set foldmethod=indent]])
vim.cmd([[set nofoldenable]])
vim.cmd([[highlight WinSeperator guibg=None]])
vim.cmd([[set showtabline=2]])
vim.cmd([[let $NVIM_TUI_ENABLE_TRUE_COLOR=1]])
vim.cmd([[set autochdir]])
vim.cmd([[syntax on]])

vim.opt.cursorline = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.updatetime = 50
vim.opt.swapfile = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
