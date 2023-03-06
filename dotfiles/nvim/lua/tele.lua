
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- Requires ripgrep (semi thick download)
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fe', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {}) 
vim.keymap.set('n', '<leader>ft' , builtin.treesitter, {})
vim.keymap.set('n', '<leader>fb' , builtin.git_branches, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {}) -- Add jump type option to tab
vim.keymap.set('n', '<leader>fd' , builtin.lsp_definitions, {}) -- Add jump type option to tab
vim.keymap.set('n', '<leader>fm' , builtin.marks, {})
vim.keymap.set('n', '<leader>fj', builtin.jumplist, {})
vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, {}) -- Add jump type option to tab

local telescope = require("telescope")
telescope.setup {
  extensions = {
    hop = {
      keys = {"a", "s", "d", "f", "g", "h", "j", "k", "l", ";",
              "q", "w", "e", "r", "t", "y", "u", "i", "o", "p",
              "A", "S", "D", "F", "G", "H", "J", "K", "L", ":",
              "Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", },
      sign_hl = { "WarningMsg", "Title" },
      line_hl = { "CursorLine", "Normal" },
      clear_selection_hl = false,
      trace_entry = true,
      reset_selection = true,
    },
  },
  -- SETUP MAPPINGS
}

telescope.load_extension('hop')
telescope.load_extension("live_grep_args")
