local over = require('overseer').setup {


}

vim.keymap.set("n", "<leader>ot", ":OverseerToggle<CR>")
vim.keymap.set("n", "<leader>or", ":OverseerRun<CR>")
vim.keymap.set("n", "<leader>oq", ":OverseerQuickAction<CR>")
vim.keymap.set("n", "<leader>oa", ":OverseerTaskAction<CR>")
