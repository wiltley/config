-- LSP ZERO (lsp + comp + snipps) settings + LSP SAGA--
local lsp = require('lsp-zero').preset({
  name = 'recommended',
})


lsp.ensure_installed({
  'gopls', 'clangd',
})
-- fix for undefined global
lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}
  --vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  -- vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set({"n","v"}, "<leader>K", "<cmd>Lspsaga hover_doc<CR>", opts)
  vim.keymap.set({"n","v"}, "<leader>gd", "<cmd>Lspsaga goto_definition<CR>", opts)
  vim.keymap.set({"n","v"}, "<leader>pd", "<cmd>Lspsaga peek_definition<CR>", opts)
  vim.keymap.set({"n","v"}, "<leader>lf", "<cmd>Lspsaga lsp_finder<CR>", opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  --vim.keymap.set("n", "<leader>fa", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set({"n","v"}, "<leadfr>ca", "<cmd>Lspsaga code_action<CR>", opts)
  vim.keymap.set("n", "<leader>rf", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>sh", function() vim.lsp.buf.signature_help() end, opts)
  vim.keymap.set("n", "<leader>lf", ":LspZeroFormat<CR>")
end)

local lspsaga = require 'lspsaga'
lspsaga.setup { -- defaults ...
  debug = true,
  use_saga_diagnostic_sign = true,
  -- diagnostic sign
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
  diagnostic_header_icon = "   ",
  -- code action title icon
  code_action_icon = "!",
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  },
    lightbulb = {
    enable = false,
    enable_in_insert = false,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  },
  finder_definition_icon = "  ",
  finder_reference_icon = "  ",
  max_preview_lines = 10,
  finder_action_keys = {
    open = "o",
    vsplit = "s",
    split = "i",
    quit = "q",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>",
  },
  code_action_keys = {
    quit = "q",
    exec = "<CR>",
  },
  rename_action_keys = {
    quit = "<C-c>",
    exec = "<CR>",
  },
  ui = {
    colors = {
      normal_bg = "NONE",
      title_bg = "NONE"
    }
  },
  definition_preview_icon = "  ",
  border_style = "single",
  rename_prompt_prefix = "➤",
  rename_output_qflist = {
    enable = true,
    auto_open_qflist = true,
  },
  server_filetype_map = {},
  diagnostic_prefix_format = "%d. ",
  diagnostic_message_format = "%m %c",
  highlight_prefix = false,
}

local cmp = require('cmp')

cmp.setup {
    completion = {
    autocomplete = true,
  },
}

local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil


lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.setup()

-- nvim-cmp supports additional completion capabilities

vim.diagnostic.config({
    virtual_text = true
})
