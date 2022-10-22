local lspkind = require('lspkind')
local cmp = require('cmp')

cmp.setup {
  -- 指定 snippet 引擎
    snippet = {
        expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    -- 来源
    sources = cmp.config.sources(
        {
            { name = 'nvim_lsp' },
            { name = 'vsnip' },
        },
        {
            { name = 'buffer' },
            { name = 'path' }
        }
    ),

    -- 快捷键
    mapping = cmp.mapping.preset.insert({
        ['<C-e>'] = cmp.mapping.abort(),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    formatting = {
        format = lspkind.cmp_format({
            with_text = true, -- do not show text alongside icons
            maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
        })
    },
}

-- Use buffer source for `/`.
cmp.setup.cmdline('/', {
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
    sources = cmp.config.sources(
        {
            { name = 'path' }
        },
        {
            { name = 'cmdline' }
        }
    )
})
