return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	keys = {
		{ "<leader>ff", ":lua require('telescope.builtin').find_files()<cr>", mode = "n" , silent = true},
		{ "<leader>fg", ":lua require('telescope.builtin').live_grep()<cr>", mode = "n" ,silent = true},
		{ "<leader>fr", ":lua require('telescope.builtin').lsp_references()<cr>", mode = "n" ,silent = true},
		{ "<leader>gr", ":lua require('telescope.builtin').lsp_references()<cr>", mode = "n" ,silent = true},
		{ "<leader>gi", ":lua require('telescope.builtin').lsp_implementations()<cr>", mode = "n" ,silent = true},
		{ "<leader>gd", ":lua require('telescope.builtin').lsp_definitions()<cr>", mode = "n" ,silent = true},
	}
}
