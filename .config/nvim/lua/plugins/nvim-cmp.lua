return {
    {
        "hrsh7th/cmp-buffer"
    },
    {
        "hrsh7th/cmp-path"
    },
    {
        "hrsh7th/cmp-cmdline"
    },
    {
        "hrsh7th/cmp-nvim-lsp"
    },
    {
        "L3MON4D3/LuaSnip"
    },
    {
        "saadparwaiz1/cmp_luasnip"
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "onsails/lspkind.nvim"
        },
        -- name
        main = "cmp",
        -- init
        -- opts
        config = function()
            local cmp = require("cmp")
            local lspkind = require('lspkind')
            cmp.setup({
                formatting = {
                    format = lspkind.cmp_format(),
                },
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end
                },
                window = {
                    -- completion = cmp.config.window.bordered(),
                    -- documentation = cmp.config.window.bordered()
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['C-e'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true })
                }),
                sources = cmp.config.sources(
                    {
                        { name = 'nvim_lsp' },
                        { name = 'luasnip' },
                        { name = 'path' },
                        { name = 'buffer', keyword_length = 3 }
                    }
                )
            })
        end
    }
}
