return {
    "nvim-telescope/telescope.nvim",
    opts = {
        defaults = {
            prompt_prefix = "   ",
            selection_caret = " 󰜴  ",
            borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            preview = false,
            vimgrep_arguments = {
                "rg",
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case",
                "--hidden",
                "--glob=!**/.git/*",
                "--glob=!**/node_modules/*",
                "--glob=!**/*.lock",
            },
        },
        pickers = {
            find_files = { hidden = true }
        }
    }
}
