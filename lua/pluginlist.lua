return {
	--i reject gruvbox dio
    --{
     --   "ellisonleao/gruvbox.nvim",
       -- priority = 1000,
        --config = function()
       --     vim.cmd("colorscheme gruvbox")
        --end
    --},
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    'folke/neodev.nvim',
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
            --'hrsh7th/cmp-nvim-lsp', --not using lsp code completion for now
        },
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
			'nvim-lua/plenary.nvim',
			--'BurntSushi/ripgrep'
		},
		event = "VeryLazy"
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
		event = "VeryLazy"
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                icons_enabled = true,
				options = {theme = 'jellybeans'}
            })
        end,
    },
	{
		'nvim-tree/nvim-tree.lua',
			version = '*',
		lazy = true,
		keys = "<C-n>",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		config = function ()
			-- disable netrw at the very start of your init.lua
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			local api = require("nvim-tree.api")

			vim.keymap.set('n', '<C-n>', api.tree.toggle)

			require("nvim-tree").setup()
		end
	},
	{
		"folke/which-key.nvim",
  		event = "VeryLazy",
  		init = function()
    		vim.o.timeout = true
    		vim.o.timeoutlen = 300
  		end,
		opts = {
			presets = {
      		operators = true, -- adds help for operators like d, y, ...
      		motions = true, -- adds help for motions
      		text_objects = true, -- help for text objects triggered after entering an operator
      		windows = true, -- default bindings on <c-w>
      		nav = true, -- misc bindings to work with windows
      		z = true, -- bindings for folds, spelling and others prefixed with z
      		g = true, -- bindings for prefixed with g
    		},
		},
	},
	{
		'windwp/nvim-autopairs',
    	event = "InsertEnter",
    	opts = {} -- this is equivalent to setup({}) function
	},
	{
    	"kylechui/nvim-surround",
    	version = "*", -- Use for stability; omit to use `main` branch for the latest features
    	event = "VeryLazy",
    	config = function()
        	require("nvim-surround").setup()
    	end
	},
	{
  		'Wansmer/treesj',
  		keys = { '<space>m', '<space>j', '<space>s' },
		cmd = { 'TSJToggle', 'TSJSplit', 'TSJJoin'},
  		dependencies = { 'nvim-treesitter/nvim-treesitter' },
  		config = function()
    		local tsj = require('treesj')
			tsj.setup()
			vim.keymap.set('n', '<Leader>m', tsj.toggle)
			vim.keymap.set('n', '<Leader>j', tsj.join)
			vim.keymap.set('n', '<Leader>s', tsj.split)
  		end,
	},
	{
		'savq/melange-nvim', --the spice must flow
		init = function()
			vim.opt.termguicolors = true
			vim.cmd.colorscheme 'melange'
		end
	}
}
