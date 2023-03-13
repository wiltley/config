vim.cmd [[set termguicolors]]
--Lua:

vim.cmd("colorscheme kanagawa")
--require('onedark').setup {
    -- style = "warmer",
--}
--require('onedark').load()

-- hardline --
require('hardline').setup {
    bufferline = true,
    bufferline_settings = {
        show_index = false,        -- show buffer indexes (not the actual buffer numbers) in bufferline
  },
}

require("bufferline").setup{
 -- bufferline --
	options = {
		modified_icon = "[+]",
		buffer_close_icon = "X",
		close_icon = "",
        separator_style = "thin", -- On kitty slant works but now padded slant
--  	numbers = "ordinal",
--		numbers = function(opts)
        numbers = function(opts) -- My beloved
          if vim.api.nvim_get_current_buf() == opts.id then return "" end
          return opts.id
        end,
        color_icons = false, -- whether or not to add the filetype icon highlights
		mode = "buffers",
		max_name_length = 18,
		max_prefix_length = 6,
		show_buffer_icons = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		persist_buffer_sort = true,
		enforce_regular_tabs = false,
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level)
		  local icon = level:match("error") and "E" or "W" --     Bugged on kitty
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
