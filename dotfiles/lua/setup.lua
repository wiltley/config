
-- nvim-tree setup
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


-- easymotion
vim.cmd[[let g:EasyMotion_smartcase = 1]]
