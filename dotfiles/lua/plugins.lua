-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'navarasu/onedark.nvim'
    use 'MunifTanjim/prettier.nvim'
	use 'ojroques/nvim-hardline'
	use 'arzg/vim-colors-xcode'
	use 'jiangmiao/auto-pairs'
	use 'tpope/vim-fugitive'
	use 'kdheepak/lazygit.nvim'
	use 'ap/vim-css-color'
	use 'airblade/vim-rooter'
	use 'wesQ3/vim-windowswap'
	use 'nvim-lua/plenary.nvim'
	use 'ThePrimeagen/harpoon'
	use 'nvim-telescope/telescope.nvim'
	use 'danilamihailov/beacon.nvim'
	use 'easymotion/vim-easymotion'
	use 'kyazdani42/nvim-web-devicons'
	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},             -- Required
		{'williamboman/mason.nvim'},           -- Optional
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},         -- Required
		{'hrsh7th/cmp-nvim-lsp'},     -- Required
		{'hrsh7th/cmp-buffer'},       -- Optional
		{'hrsh7th/cmp-path'},         -- Optional
		{'saadparwaiz1/cmp_luasnip'}, -- Optional
		{'hrsh7th/cmp-nvim-lua'},     -- Optional

		-- Snippets
		{'L3MON4D3/LuaSnip'},             -- Required
		{'rafamadriz/friendly-snippets'}, -- Optional
	  }
	}
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
	use {
	  'nvim-tree/nvim-tree.lua',
		requires = {
		'nvim-tree/nvim-web-devicons', -- optional, for file icons
	  },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	use {
		"nvim-treesitter/nvim-treesitter",
		run = function() require("nvim-treesitter.install").update { with_sync = true } end
	}
end)

