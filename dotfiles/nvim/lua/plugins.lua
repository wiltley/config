-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'MunifTanjim/prettier.nvim'
	use 'preservim/NERDTree'
	use 'nvim-tree/nvim-tree.lua'
	use 'ojroques/nvim-hardline'
	use 'mattn/emmet-vim'
	use 'arzg/vim-colors-xcode'
	use 'jiangmiao/auto-pairs'
	use 'tpope/vim-fugitive'
	use 'kdheepak/lazygit.nvim'
	use 'ap/vim-css-color'
	use 'ggandor/lightspeed.nvim'
	use 'junegunn/fzf' 
	use 'airblade/vim-rooter'
	use 'neovim/nvim-lspconfig'
	use 'wesQ3/vim-windowswap'
	use 'nvim-lua/plenary.nvim'
	use 'ThePrimeagen/harpoon'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'nvim-telescope/telescope.nvim'
	use 'navarasu/onedark.nvim'
	use 'danilamihailov/beacon.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

	use {
		"nvim-treesitter/nvim-treesitter",
		run = function() require("nvim-treesitter.install").update { with_sync = true } end
	}
end)


-- nvim tree setup --
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
	  relativenumber = true,
	  side = "right",
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
