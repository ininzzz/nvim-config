return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
		{ "folke/neodev.nvim" },
	},
	config = function()
		require("mason").setup({})
		require("mason-lspconfig").setup({})
		require("neodev").setup({})
		require("lspconfig")["lua_ls"].setup({})
		require("lspconfig")["gopls"].setup({})
		require("lspconfig")["clangd"].setup({})
	end,
	keys = {
		{ "gd", vim.lsp.buf.definition, mode = "n" },
		{ "gi", vim.lsp.buf.implementation, mode = "n" },
		{ "gr", vim.lsp.buf.references, mode = "n" },
		{ "<F2>", vim.lsp.buf.rename, mode = "n" },
		{ "<leader>k", vim.lsp.buf.hover, mode = "n" },
		{ "<C-f>", vim.lsp.buf.format, mode = "n" },
	}

}
