require('plugin/mason')
require('plugin/mason-lspconfig')
require('plugin/nvim-lspconfig')
require('plugin/nvim-cmp')
require('plugin/bufferline')
require('plugin/nvim-treesitter')
require('plugin/nvim-tree')
require('plugin/nvim-autopairs')
require('plugin/telescope')
require('plugin/lualine')
require('plugin/comment')
require('plugin/gitsigns')


return require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim' }
	use { 'akinsho/bufferline.nvim', tag = 'v3.*', requires = 'nvim-tree/nvim-web-devicons' }
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use { 'nvim-tree/nvim-tree.lua' }
	use { 'famiu/bufdelete.nvim' }
	use { 'nvim-lualine/lualine.nvim' }
	use { 'windwp/nvim-autopairs' }
	use { 'akinsho/toggleterm.nvim', tag = '*' }
	use { "lewis6991/gitsigns.nvim" }
	use { "numToStr/Comment.nvim" }

	-- lsp
	use { "williamboman/mason.nvim" }
	use { "williamboman/mason-lspconfig.nvim" }
	use { "neovim/nvim-lspconfig" }

	-- nvim-cmp
	use { "hrsh7th/cmp-nvim-lsp" }
	use { "hrsh7th/cmp-buffer" }
	use { "hrsh7th/cmp-path" }
	use { "hrsh7th/cmp-cmdline" }
	use { "hrsh7th/nvim-cmp" }

	-- vsnip
	use { "hrsh7th/cmp-vsnip" }
	use { "hrsh7th/vim-vsnip" }
	use { "rafamadriz/friendly-snippets" }

	-- theme
	use { 'Mofiqul/vscode.nvim' }
end)
