
vim.g.mapleader = ' '

-- define new mapping --
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- lightspeed --
map("n", "s", "<Plug>Lightspeed_omni_s")

-- lazygit -- 
map("n", "<leader>gl", ":Lazygit<CR>")

-- nvim tree --
map("n", "<leader>ntt", ":NvimTreeToggle<CR>")
map("n", "<leader>ntf", ":NvimTreeFocus<CR>")

map("n", "<leader>mm", ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>")


-- lsp

local lspconfig = require 'lspconfig'
local on_attach = function(_, bufnr)
  local opts = { buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
  vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
  vim.keymap.set('n', '<leader>wl', function()
    vim.inspect(vim.lsp.buf.list_workspace_folders())
  end, opts)
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', '<leader>so', require('telescope.builtin').lsp_document_symbols, opts)
  vim.api.nvim_create_user_command("Format", vim.lsp.buf.formatting, {})
end




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
