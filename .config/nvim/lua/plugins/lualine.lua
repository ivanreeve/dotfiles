return {
    {
        "linrongbin16/lsp-progress.nvim",
        config = function()
            require("lsp-progress").setup({
                client_format = function(client_name, spinner, series_messages)
                    if #series_messages == 0 then
                        return nil
                    end
                    return {
                        name = client_name,
                        body = spinner .. " " .. table.concat(series_messages, ", ")
                    }
                end,

                format = function(client_messages)
                    --- @param name string
                    --- @param msg string?
                    --- @return string
                    local function stringify(name, msg)
                        return msg and string.format("%s %s", name, msg) or name
                    end

                    local sign = " LSP:"
                    local lsp_clients = vim.lsp.get_active_clients()
                    local buf_lsp_clients = {}
                    local messages_map = {}

                    for _, climsg in ipairs(client_messages) do
                        messages_map[climsg.name] = climsg.body
                    end

                    if #lsp_clients > 0 then
                        local current_buf = vim.api.nvim_get_current_buf()
                        for _, lsp_client in ipairs(lsp_clients) do
                            local is_attached = vim.lsp.buf_is_attached(current_buf, lsp_client.id)
                            if is_attached then
                                table.insert(buf_lsp_clients, lsp_client)
                            end
                        end

                        table.sort(buf_lsp_clients, function(a, b)
                            return a.name < b.name
                        end)

                        local builder = {}
                        for _, cli in ipairs(buf_lsp_clients) do
                            if type(cli) == "table"
                                and type(cli.name) == "string"
                                and string.len(cli.name) > 0
                            then
                                if messages_map[cli.name] then
                                    table.insert(
                                        builder,
                                        stringify(cli.name, messages_map[cli.name])
                                    )
                                else
                                    table.insert(builder, stringify(cli.name))
                                end
                            end
                        end

                        if #builder > 0 then
                            return sign .. " " .. table.concat(builder, ", ")
                        end
                    end
                    return ""
                end
            })
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                options = {
                    ignore_focus = {
                        "NvimTree"
                    },
                    globalstatus = true,
                    theme = "auto",
                    component_separators = { left = "", right = "" },
                    section_separators = { left = "", right = "" }
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
                            function()
                                return " "
                            end,
                            padding = 0
                        },
                        {
                            "branch",
                            icons_enabled = true,
                            icon = "",
                            color = {
                                bg = "#313244"
                            }
                        }
                    },
                    lualine_c = {
                        {
                            "diagnostics",
                            sources = { "nvim_lsp" },
                            sections = { "error", "warn", "info", "hint" },
                            symbols = { error = " ", warn = " ", info = " ", hint = " " },
                            colored = true
                        }
                    },
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = {
                        {
                            "diff",
                            symbols = {
                                added = " ",
                                modified = " ",
                                removed = " "
                            },
                            color = { bg = "#181825" }
                        },
                        {
                            "encoding",
                            icons_enabled = true,
                            icon = "󰈙",
                            color = { bg = "#181825", fg = "#6c7086" }
                        },
                        {
                            "filetype",
                            color = { bg = "#181825", fg = "#6c7086" }
                        },
                        {
                            "location",
                            icons_enabled = true,
                            icon          = "",
                            color         = { bg = "#eba0ac", fg = "#181825", gui = "bold" },
                            padding       = { right = 1 },
                            separator     = { left = "" }
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
                                modified = " ", -- Text to show when the file is modified.
                            },
                            tabs_color = {
                                modified = { bg = "#d20f39", fg = "#181825", gui = "bold" },
                                active = { bg = "#94e2d5", fg = "#181825", gui = "bold" },
                                inactive = { bg = "#45475a", fg = "#a6adc8", gui = "bold" }
                            }
                        }
                    },
                    lualine_b = {},
                    lualine_c = {},
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = {
                        {
                            function()
                                return require("lsp-progress").progress()
                            end,
                            color = {
                                fg = "#181825",
                                bg = "#b4befe",
                                gui = "bold"
                            }
                        }
                    }
                }
            })

            -- lualine_b contains the block character next to mode indicator
            vim.api.nvim_set_hl(0, "lualine_b_normal", { bg = "#4b5e85" })
            vim.api.nvim_set_hl(0, "lualine_b_insert", { bg = "#58735d" })
            vim.api.nvim_set_hl(0, "lualine_b_terminal", { bg = "#58735d" })
            vim.api.nvim_set_hl(0, "lualine_b_replace", { bg = "#7b4c60" })
            vim.api.nvim_set_hl(0, "lualine_b_command", { bg = "#7e5e51" })
            vim.api.nvim_set_hl(0, "lualine_b_visual", { bg = "#695884" })

            vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
            vim.api.nvim_create_autocmd("User", {
                group = "lualine_augroup",
                pattern = "LspProgressStatusUpdated",
                callback = require("lualine").refresh
            })
        end
    }
}
