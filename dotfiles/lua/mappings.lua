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
map("n", "<leader>lg", ":LazyGit<CR>")

-- nvim tree --
--map("n", "<leader>ntt", ":NvimTreeToggle<CR>")
--map("n", "<leader>ntf", ":NvimTreeFocus<CR>")

map("n", "<leader>mm", ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>")
map('n', "<leader>0", ":lua require(\"harpoon.mark\").add_file()<CR>")
map("n", "<leader>1", ":lua require(\"harpoon.ui\").nav_file(1)<CR>")
map("n", "<leader>2", ":lua require(\"harpoon.ui\").nav_file(2)<CR>")
map("n", "<leader>3", ":lua require(\"harpoon.ui\").nav_file(3)<CR>")
map("n", "<leader>4", ":lua require(\"harpoon.ui\").nav_file(4)<CR>")

-- horizontal scrolling
map("n", "<C-L>", "30zl")
map("n", "<C-H>", "30zh")


-- undo tree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- don't ask me how this works. shoutout primeagen
-- moves files up and down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- buffers
map("n", "<leader>b", ":buffers<CR>:buffer<Space>")
--- tab traversal // I've evolved to buffers!
--noremap <leader>1 1gt
--map("n","<leader>1", "1gt")
--map("n","<leader>2", "2gt")
--map("n","<leader>3", "3gt")
--map("n","<leader>4", "4gt")
--map("n","<leader>5", "5gt")
--map("n","<leader>6", "6gt")

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
