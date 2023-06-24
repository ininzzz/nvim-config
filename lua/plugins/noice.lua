return {
	"folke/noice.nvim",
	event = "VeryLazy",
	config = function(_, opts)
		require('notify').setup(vim.tbl_extend('keep', {
			timeout = 1000,
			background_colour = "#000000",
			max_width = 50,
			max_height = 30,
		}, opts))
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
		"rcarriga/nvim-notify"
	}
}
