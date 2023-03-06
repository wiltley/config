-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'navarasu/onedark.nvim'
    use 'MunifTanjim/prettier.nvim'
	use 'ojroques/nvim-hardline'
	use 'arzg/vim-colors-xcode'
	use 'tpope/vim-fugitive'
	use 'ap/vim-css-color'
--    use 'fatih/vim-go'
    use 'ryanoasis/vim-devicons'
    use 'theHamsta/nvim-dap-virtual-text'
	use 'airblade/vim-rooter'
	use 'wesQ3/vim-windowswap'
    use 'mbbill/undotree'
	use 'nvim-lua/plenary.nvim'
	use 'ThePrimeagen/harpoon'
    use 'kdheepak/lazygit.nvim'
	use 'danilamihailov/beacon.nvim'
	use 'easymotion/vim-easymotion'
	use 'kyazdani42/nvim-web-devicons'
    use 'tmsvg/pear-tree'
    --use 'airblade/vim-gitgutter'
    use "lukas-reineke/indent-blankline.nvim"
    use 'nvim-telescope/telescope-hop.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'lewis6991/gitsigns.nvim'
    use {
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
    }
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'leoluz/nvim-dap-go'
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
    end}
    -- use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    --  require("toggleterm").setup()
    -- end}
    -- use {
      --"folke/which-key.nvim",
      --config = function()
        --vim.o.timeout = true
        --vim.o.timeoutlen = 900
        --require("which-key").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
       -- }
      --end
    --}
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { 
      {'nvim-lua/plenary.nvim'},
      {"nvim-telescope/telescope-live-grep-args.nvim"},
      }
    }
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
	--use {
	--  'nvim-tree/nvim-tree.lua',
--		requires = {
--		'nvim-tree/nvim-web-devicons', -- optional, for file icons
--	  },
--	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
--	}
	use {
		"nvim-treesitter/nvim-treesitter",
		run = function() require("nvim-treesitter.install").update { with_sync = true } end
	}
    use {
        "goolord/alpha-nvim",
        config = function ()
            local alpha = require'alpha'
            local startify = require'alpha.themes.startify'
            startify.section.header.val = {
                [[                                   __                ]],
                [[      ___     ___    ___   __  __ /\_\    ___ ___    ]],
                [[     / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
                [[    /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
                [[    \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
                [[     \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
            }
            startify.section.top_buttons.val = {
                startify.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
            }
            -- disable MRU
            startify.section.mru.val = { { type = "padding", val = 0 } }
            -- disable MRU cwd
            startify.section.mru_cwd.val = { { type = "padding", val = 0 } }
            -- disable nvim_web_devicons
            startify.nvim_web_devicons.enabled = false
            -- startify.nvim_web_devicons.highlight = false
            -- startify.nvim_web_devicons.highlight = 'Keyword'
            --
            startify.section.bottom_buttons.val = {
                startify.button( "q", "  Quit NVIM" , ":qa<CR>"),
            }
            startify.section.footer = {
                { type = "text", val = "footer" },
            }
            -- ignore filetypes in MRU
            startify.mru_opts.ignore = function(path, ext)
                return
                        (string.find(path, "COMMIT_EDITMSG"))
                    or  (vim.tbl_contains(default_mru_ignore, ext))
            end
            alpha.setup(startify.config)
        end
    }
end)


