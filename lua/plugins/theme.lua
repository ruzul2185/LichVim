-- ====================================================================
-- TITLE : EdenEast/nightfox.nvim theme
-- ABOUT : sets theme for the whole text editor
-- ====================================================================

return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        options = {
            transparent = false,     -- set true if you want transparent background
            terminal_colors = true,  -- apply theme to Neovim terminal
            dim_inactive = true,     -- dim inactive windows
            styles = {
                comments = "italic",
                keywords = "bold",
                functions = "bold",
                variables = "NONE",
            },
        },
    },
    config = function(_, opts)
        require("nightfox").setup(opts)
        vim.cmd("colorscheme carbonfox")
    end,
}
