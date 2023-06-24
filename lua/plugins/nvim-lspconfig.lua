return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
	},
	config = function()
		require("mason").setup({})
		require("mason-lspconfig").setup({})

		require("lspconfig")["lua_ls"].setup({})
		require("lspconfig")["gopls"].setup({})
		require("lspconfig")["clangd"].setup({})
		require("lspconfig")["tsserver"].setup({})
		require("lspconfig")["dockerls"].setup({})

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		local general_on_attach = function(client, bufnr)
			if client.resolved_capabilities.completion then
				require("completion").on_attach(client, bufnr)
			end
		end

		for _,server in pairs({"html","cssls"}) do
			require("lspconfig")[server].setup({
				capabilities = capabilities,
				on_attach = general_on_attach,
			})
		end

	end,
	keys = {
		{ "gd",        vim.lsp.buf.definition,     mode = "n", silent = true },
		{ "gi",        vim.lsp.buf.implementation, mode = "n", silent = true },
		{ "gr",        vim.lsp.buf.references,     mode = "n", silent = true },
		{ "<F2>",      vim.lsp.buf.rename,         mode = "n", silent = true },
		{ "<leader>c", vim.lsp.buf.code_action,    mode = "n", silent = true },
		{ "<leader>k", vim.lsp.buf.hover,          mode = "n", silent = true },
		{ "<C-f>",     vim.lsp.buf.format,         mode = "n", silent = true },
	}

}
