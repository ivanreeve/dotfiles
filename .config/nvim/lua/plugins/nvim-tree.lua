return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require("nvim-tree").setup({
            --on_attach = my_on_attach,
            hijack_cursor = true,
            sync_root_with_cwd = true,
            renderer = {
                symlink_destination = false,
                indent_markers = {
                    enable = true
                }
            },
            view = {
                width = 70,
                relativenumber = true,
                side = "right",
                preserve_window_proportions = true,
            },
            actions = {
                open_file = {
                    --quit_on_open = true
                }
            }
        })
    end
}
