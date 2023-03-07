require('plugin/bufferline')
require('plugin/nvim-treesitter')


return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'	
	use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
	use { 'projekt0n/github-nvim-theme', tag = 'v0.0.*' }
	use { "nvim-treesitter/nvim-treesitter", tag = 'v0.7.*' }
end)
