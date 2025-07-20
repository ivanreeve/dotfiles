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
                "ts_ls",
                "jsonls",
                "pyright",
                "lua_ls",
                "bashls",
                "rust_analyzer",
                "clangd",
                "awk_ls",
                "emmet_language_server"
                --"gopls", -- deps: go compiler
                --"asm_lsp", -- deps: cargo
            },
        }
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

            local capabilities = require("cmp_nvim_lsp").default_capabilities() -- extensible capabilities
            -- local on_attach = require("cmp_nvim_lsp").default_capabilities() -- extensible capabilities
            -- Start your language servers here
            -- require("lspconfig").<lsp_name>.setup({ capabilities = capabilities })
            require("lspconfig").html.setup({ capabilities = capabilities })
            require("lspconfig").cssls.setup({ capabilities = capabilities })
            require("lspconfig").tailwindcss.setup({ capabilities = capabilities })
            require("lspconfig").ts_ls.setup({ capabilities = capabilities })
            require("lspconfig").jsonls.setup({ capabilities = capabilities })
            require("lspconfig").pyright.setup({ capabilities = capabilities })
            require("lspconfig").lua_ls.setup({ capabilities = capabilities })
            require("lspconfig").bashls.setup({ capabilities = capabilities })
            require("lspconfig").rust_analyzer.setup({ capabilities = capabilities })
            require("lspconfig").clangd.setup({ capabilities = capabilities })
            require("lspconfig").awk_ls.setup({ capabilities = capabilities })
            require("lspconfig").emmet_language_server.setup({ capabilities = capabilities })
            --require("lspconfig").gopls.setup({})
            --require("lspconfig").asm_lsp.setup({})
        end
    }
}
