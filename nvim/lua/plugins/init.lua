require("packer").startup(function()
	-- Git stuff
	use({
		"ttys3/nvim-blamer.lua",
		as = "nvim-blamer",
		config = function()
			require("plugins/nvim-blamer")
		end,
	})

	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("plugins/git-signs")
		end,
	})

	-- themes
	use({
		 "catppuccin/nvim",
			as = "catppuccin",
			config = function()
				require("plugins/catppuccin")
			end,
	 })

	use({
		"hoob3rt/lualine.nvim",
		config = function()
			require("plugins/lualine")
		end,
	})

	use({
		"akinsho/nvim-bufferline.lua",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("plugins/bufferline")
		end,
	})

	-- file explorer
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("plugins/nvim-tree")
		end,
	})

	-- Terminal
	use({
		"akinsho/toggleterm.nvim",
		config = function()
			require("plugins/toggleterm")
		end,
	})

	-- enable treesitter on neovim
	use({
		"nvim-treesitter/nvim-treesitter",
		requires = {
			"nvim-treesitter/nvim-treesitter-refactor",
			{
				"nvim-treesitter/completion-treesitter",
				run = function()
					vim.cmd("TSUpdate")
				end,
			},
		},
		config = function()
			require("plugins/treesitter")
		end,
	})

	use({
		"nvim-treesitter/nvim-treesitter-context",
		config = function()
			require("plugins/treesitter-context")
		end,
	})

	use({
    "simrat39/rust-tools.nvim"
  })

	-- autopairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("plugins/autopairs")
		end,
	})

  use {
    'VonHeikemen/lsp-zero.nvim',
    config = function()
      require("lsp")
    end,
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
	-- run formatters
	use({
		"mhartington/formatter.nvim",
		config = function()
			require("plugins/formatter")
		end,
	})

	-- fuzzy search
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/popup.nvim" },
			{ "nvim-lua/plenary.nvim" },
		},
		config = function()
			require("plugins/telescope")
		end,
	})

	use({
		"p00f/nvim-ts-rainbow",
		config = function()
			require("plugins/rainbow")
		end,
	})

	-- linter and formatter
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("plugins/null")
		end,
	})

	-- commentary
	use({
		"tpope/vim-commentary",
		config = function()
			require("plugins/commentary")
		end,
	})

	if packer_bootstrap then
		require("packer").sync()
	end
end)
