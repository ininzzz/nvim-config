return {
	"hrsh7th/nvim-cmp",
	event = { "InsertEnter" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
	},
	opts = function()
		local cmp = require("cmp")

		-- insert pair after select function or mathod item
		local cmp_autopirs = require('nvim-autopairs.completion.cmp')
		cmp.event:on("confirm_done", cmp_autopirs.on_confirm_done())

		return {
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			}),
			mapping = cmp.mapping.preset.insert({
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<Tab>"] = cmp.mapping.select_next_item({}),
				["<S-Tab>"] = cmp.mapping.select_prev_item({}),
			}),
		}
	end
}
