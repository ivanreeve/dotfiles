return {
    {
        "hiphish/rainbow-delimiters.nvim"
    },
    {
        "windwp/nvim-ts-autotag",
        opts = {
            opts = {
                -- Defaults
                enable_close = true, -- Auto close tags
                enable_rename = true, -- Auto rename pairs of tags
                enable_close_on_slash = false -- Auto close on trailing </
            }

        }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        main = "nvim-treesitter.configs",
        opts = {
            auto_install = true,
            highlight = { enable = true }
        }
    }
}
