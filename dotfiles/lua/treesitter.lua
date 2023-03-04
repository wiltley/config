-- Treesitter settings --
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "go" },
  sync_install = false,
  auto_install = true,
  ignore_install = { "javascript" },
  highlight = {
    enable = true,
    disable = { "c", "rust" },
    additional_vim_regex_highlighting = false,
  },
}

-- END treesitter settings
