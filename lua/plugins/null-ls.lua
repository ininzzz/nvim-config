return {
	"jose-elias-alvarez/null-ls.nvim",
	opts = function()
		local null_ls = require("null-ls")
		return {
			sources = {
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.goimports_reviser,
			},
		}
	end,
}
