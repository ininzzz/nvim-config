return {
	"hrsh7th/nvim-cmp",
	event = { "InsertEnter" },
	dependencies = {
		"onsails/lspkind.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/vim-vsnip",
	},
	opts = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")

		-- insert pair after select function or mathod item
		local cmp_autopirs = require('nvim-autopairs.completion.cmp')
		cmp.event:on("confirm_done", cmp_autopirs.on_confirm_done())

		return {
			snippet = {
				expand = function(args)
					vim.fn["vsnip#anonymous"](args.body)
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
				["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
				["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
			}),
			formatting = {
				format = lspkind.cmp_format({
					mode = 'symbol_text',
					maxwidth = 50,
					ellipsis_char = '...',
				}),
			},
		}
	end
}
