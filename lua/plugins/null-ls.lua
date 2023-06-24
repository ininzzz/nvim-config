return {
	"jose-elias-alvarez/null-ls.nvim",
	opts = function()
		local null_ls = require("null-ls")
		return {
			sources = {
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.code_actions.gomodifytags,
			},
		}
	end,
}
