return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {
        renderer = {
            symlink_destination = false,
            indent_markers = {
                enable = true
            }
        },
        actions = {
            open_file = {
                quit_on_open = true
            }
        }
    }
}
