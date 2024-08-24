return {
    "goolord/alpha-nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        local custom = require("alpha.themes.custom")
        require("alpha").setup(custom.config)
    end
}
