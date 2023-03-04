 -- LSP mappings are in it's own file
vim.g.mapleader = ' '

-- define new mapping --
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--  easymotion 
map("n","s", "<Plug>(easymotion-overwin-f)")

-- lazygit -- 
map("n", "<leader>gl", ":Lazygit<CR>")

-- nvim tree --
map("n", "<leader>ntt", ":NvimTreeToggle<CR>")
map("n", "<leader>ntf", ":NvimTreeFocus<CR>")

map("n", "<leader>mm", ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>")


--nnoremap <leader>ma :lua require("harpoon.mark").add_file()<CR>

--nnoremap <leader>m1 :lua require("harpoon.ui").nav_file(1)<CR>
--nnoremap <leader>m2 :lua require("harpoon.ui").nav_file(2)<CR>
--nnoremap <leader>m3 :lua require("harpoon.ui").nav_file(3)<CR>
--nnoremap <leader>m4 :lua require("harpoon.ui").nav_file(4)<CR>
--
--
--
--
-- "fuzzy finder
-- set rtp+=/usr/local/opt/fzf
-- nnoremap <leader>f :FZF <CR>
-- let g:fzf_preview_window = ['right:50%', 'ctrl-/']
-- "nnoremap <leader>f <cmd>Telescope git_files<cr>

-- "copy paste from clipboard bindings
-- noremap <Leader>y "*y
-- noremap <Leader>p "*p
-- noremap <Leader>Y "+y
-- noremap <Leader>P "+p
