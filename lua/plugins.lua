-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
    use { 'wbthomason/packer.nvim' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'nvim-tree/nvim-tree.lua' }
    use { 'nvim-tree/nvim-web-devicons' }
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons' }
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = 'nvim-lua/plenary.nvim' }
    use { 'navarasu/onedark.nvim' }
    -- lsp
    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }
    use { "neovim/nvim-lspconfig" }
    -- nvim-cmp
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/nvim-cmp' }
    -- vsnip
    use { 'hrsh7th/cmp-vsnip' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'rafamadriz/friendly-snippets' }
    -- lspkind
    use { 'onsails/lspkind-nvim' }
end)
