
vim.cmd [[set termguicolors]]

-- colorscheme  
require('onedark').load()

-- hardline --
require('hardline').setup {}

 -- bufferline --
require("bufferline").setup{
	options = {
		modified_icon = "●",
		buffer_close_icon = "",
		close_icon = "",
		--left_trunc_marker = "",
        separator_style = "padded_slant",
		--right_trunc_marker = "",
		numbers = "ordinal",
		mode = "tabs",
		max_name_length = 15,
		max_prefix_length = 6,
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_close_icon = true,
		persist_buffer_sort = true,
		enforce_regular_tabs = true,
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level)
		  local icon = level:match("error") and "" or ""
		  return icon .. count
    end,
  },
}

-- nvim web dev icons --
require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}


require'nvim-web-devicons'.get_icons()