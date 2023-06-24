return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	keys = {
		{ "<leader>ff", ":lua require('telescope.builtin').find_files()<cr>", mode = "n" , silent = true},
		{ "<leader>fg", ":lua require('telescope.builtin').live_grep()<cr>", mode = "n" ,silent = true},
	}
}
