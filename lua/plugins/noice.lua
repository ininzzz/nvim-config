return {
	"folke/noice.nvim",
	event = "VeryLazy",
	config = function(_, opts)
		require("noice").setup(opts)
	end,
	opts = {
		lsp = {
			hover = {
				view = nil,
			},
			signature = {
				enabled = false,
			},
		},
		presets = {
			lsp_doc_border = true,
		}
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
	}
}
