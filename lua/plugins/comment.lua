return {
	"numToStr/Comment.nvim",
	opts = {},
	keys = {
		{ "<leader>/", ":lua require(\"Comment.api\").toggle.linewise.current()<CR>", mode = "n" },
		{ "<leader>/", "<esc>:lua require(\"Comment.api\").toggle.linewise(vim.fn.visualmode())<CR>", mode = "v" },
	},
}
