return {
    {
        "williamboman/mason.nvim", -- LS package manager
        config = true
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "html",
                "cssls",
                "tailwindcss",
                "tsserver",
                "jsonls",
                "gopls",
                "pyright",
                "lua_ls",
                "bashls",
                "rust_analyzer",
                "clangd",
                "asm_lsp",
                "awk_ls"
            }
        }
    },
    {
        "simrat39/symbols-outline.nvim",
        config = true
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.diagnostic.config({
                virtual_text = true,
                signs = true,
                underline = true,
                update_in_insert = false,
                severity_sort = false
            })

            local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
            for type, icon in pairs(signs) do
                local hl = "DiagnosticSign" .. type
                vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
            end

            -- local capabilities = require("cmp_nvim_lsp").default_capabilities() -- extensible capabilities
            -- local on_attach= require("cmp_nvim_lsp").default_capabilities() -- extensible capabilities
            -- Start your language servers here
            -- require("lspconfig").<lsp_name>.setup.({ capabilties = capabilties })
            require("lspconfig").html.setup({})
            require("lspconfig").cssls.setup({})
            require("lspconfig").tailwindcss.setup({})
            require("lspconfig").tsserver.setup({})
            require("lspconfig").jsonls.setup({})
            require("lspconfig").gopls.setup({})
            require("lspconfig").pyright.setup({})
            require("lspconfig").lua_ls.setup({})
            require("lspconfig").bashls.setup({})
            require("lspconfig").rust_analyzer.setup({})
            require("lspconfig").clangd.setup({})
            require("lspconfig").asm_lsp.setup({})
            require("lspconfig").awk_ls.setup({})
        end
    }
}
