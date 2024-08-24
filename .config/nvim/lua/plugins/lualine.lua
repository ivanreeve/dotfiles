return {
    {
        "linrongbin16/lsp-progress.nvim",
        config = true
    },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto",
                    component_separators = { left = "", right = ""},
                    section_separators = { left = "", right = ""}
                },
                sections = {
                    lualine_a = {
                        {
                            "mode",
                            icons_enabled = true,
                            icon = ""
                        }
                    },
                    lualine_b = {
                        {
                            "branch",
                            icons_enabled = true,
                            icon = ""
                        }
                    },
                    lualine_c = {
                        {
                            "diagnostics",
                            sources = { "nvim_lsp" },
                            sections = { "error", "warn", "info", "hint" },
                            symbols = { error = " ", warn = " ", info = "󰋽 ", hint = " " },
                            colored = true,
                            always_visible = false
                        },
                        {
                            "diff",
                            colored = true,
                            symbols = {
                                added = '+',
                                modified = '~',
                                removed = '-'
                            }
                        }
                    },
                    lualine_x = {
                        {
                            "filetype",
                            color = { bg = "#181825", fg = "#6c7086" },
                        }
                    },
                    lualine_y = {},
                    lualine_z = {
                        {
                            "location",
                            color = { bg = "#eba0ac", fg = "#181825", gui = "bold" },
                            padding  = 1
                        },
                        {
                            "filename",
                            icons_enabled = true,
                            icon = "󰝰",
                            file_status = false,
                            color = { bg = "#f2cdcd", fg = "#181825", gui = "bold" }
                        }
                    }
                },
                tabline = {
                    lualine_a = {
                        {
                            "tabs",
                            mode = 0,
                            show_modified_status = true,
                            symbols = {
                                modified = " 󰤀",  -- Text to show when the file is modified.
                            },
                            tabs_color = {
                                active = { bg = "#94e2d5", fg = "#181825", gui = "bold" },
                                inactive = { bg = "#181825", fg = "#94e2d5", gui = "bold" }
                            }
                        }
                    },
                    lualine_b = {},
                    lualine_c = {},
                    lualine_x = {
                        {
                            function()
                                return require("lsp-progress").progress()
                            end
                        }
                    },
                    lualine_y = {},
                    lualine_z = {}
                },
                extensions = {
                    "nvim-tree",
                    "symbols-outline",
                    "mason"
                }
            })

            vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
            vim.api.nvim_create_autocmd("User", {
                group = "lualine_augroup",
                pattern = "LspProgressStatusUpdated",
                callback = require("lualine").refresh,
            })
        end
    }
}
