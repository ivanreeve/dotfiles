return {
    "nvim-telescope/telescope.nvim",
    opts = {
        defaults = {
            prompt_prefix = "   ",
            selection_caret = " 󰜴  ",
            borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" }
        },
        pickers = {
            find_files = { hidden = true }
        }
    }
}
