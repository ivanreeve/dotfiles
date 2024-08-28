return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            transparent_mode = true,
            custom_highlights = function(mocha)
                return {
                    Type                    =   { fg = mocha.lavender }, -- Type is the hl group that alpha uses for header
                    DiagnosticInfo          =   { fg = mocha.blue },
                    TelescopeBorder         =   { fg = mocha.overlay0 },
                    TelescopeSelection      =   { fg = mocha.lavender, bg = mocha.mantle },
                    TelescopeSelectionCaret =   { fg = mocha.base, bg = mocha.lavender },
                    TelescopeMatching       =   { fg = mocha.yellow },
                    TelescopePromptPrefix   =   { fg = mocha.lavender },
	            }
            end
        })
        vim.cmd([[colorscheme catppuccin-mocha]])
    end
}
