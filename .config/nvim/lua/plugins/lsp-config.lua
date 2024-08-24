return {
    {
        "williamboman/mason.nvim", -- LS package manager
        config = true
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                -- ccls
                "html",
                "cssls",
                "tailwindcss",
                "eslint",
                "tsserver",
                "gopls",
                "pyright",
                "lua_ls",
                "bashls",
                "rust_analyzer",
                "clangd"
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
            -- local capabilities = require("cmp_nvim_lsp").default_capabilities() -- extensible capabilities
            -- Start your language servers here
            -- require("lspconfig").<lsp_name>.setup.({ capabilties = capabilties })
            require("lspconfig").html.setup({})
            require("lspconfig").cssls.setup({})
            require("lspconfig").tailwindcss.setup({})
            require("lspconfig").eslint.setup({})
            require("lspconfig").tsserver.setup({})
            require("lspconfig").gopls.setup({})
            require("lspconfig").pyright.setup({})
            require("lspconfig").lua_ls.setup({})
            require("lspconfig").bashls.setup({})
            require("lspconfig").rust_analyzer.setup({})
            require("lspconfig").clangd.setup({})
        end
    }
}
