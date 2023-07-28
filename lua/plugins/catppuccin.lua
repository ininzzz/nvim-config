return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function (_,opts)
		require("catppuccin").setup(opts)
		require("catppuccin").load()
	end,
	opts = {
		flavour = "macchiato",
		-- transparent_background = true,
	}
}
