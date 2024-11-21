return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "onsails/lspkind.nvim",
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            "mlaursen/vim-react-snippets"
        },
        -- name
        main = "cmp",
        -- init
        -- opts
        config = function()
            require("vim-react-snippets").lazy_load()
            local cmp = require("cmp")
            local lspkind = require("lspkind")

            vim.api.nvim_set_hl(0, "Pmenu", { bg = "#181825" })

            cmp.setup({
                formatting = {
                    format = lspkind.cmp_format(),
                },
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end
                },
                window = {
                    completion = {
                        --cmp.config.window.bordered(),
                        --border = "rounded",
                        winhighlight = "Normal:Pmenu"
                    },
                    documentation = {
                        --documentation = cmp.config.window.bordered()
                        winhighlight = "Normal:Pmenu"
                    }
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["C-e"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true })
                }),
                sources = cmp.config.sources(
                    {
                        { name = "nvim_lsp" },
                        { name = "luasnip" },
                        { 
                            -- All buffers
                            name = "buffer",
                            keyword_length = 2,
                            option = {
                                get_bufnrs = function()
                                  return vim.api.nvim_list_bufs()
                                end
                            }
                        },
                        { name = "path" }
                    }
                )
            })
        end
    }
}
