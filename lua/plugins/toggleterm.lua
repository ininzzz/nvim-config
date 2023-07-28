return {
	"akinsho/toggleterm.nvim",
	opts = {
		direction = 'float',
		start_in_insert = false,
		float_opts = {
			width = 80,
			height = 20,
		}
	},
	keys = {
		{ "<leader>t", "<cmd>ToggleTerm<cr>i", mode = "n", silent = true },
		{ "jk", "<C-\\><C-n><cmd>ToggleTerm<cr>", mode = "t", silent = true },
		{ "<esc>", "<C-\\><C-n>", mode = "t", silent = true },
	}
}
