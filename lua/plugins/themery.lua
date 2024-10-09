-- local themery_config = require("core.global").themery_config
local path_sep = "/"
local themery_config = vim.fn.stdpath("config")
    .. path_sep
    .. "lua"
    .. path_sep
    .. "config"
    .. path_sep
    .. "colorscheme.lua"
return {
    "zaldih/themery.nvim",
    --lazy = false,
    --event = "VeryLazy",
    cmd = "Themery",
    config = function()
        local status_ok, themery = pcall(require, "themery")
        if not status_ok then
            return
        end
        themery.setup({
            themes = {
                {
                    name = "github-nvim-theme",
                    colorscheme = "github_dark",
                },
                {
                    name = "momiji",
                    colorscheme = "momiji",
                },
                {
                    name = "monokai-pro.nvim",
                    colorscheme = "monokai-pro",
                },
                {
                    name = "monokai.nvim",
                    colorscheme = "monokai",
                },
                {
                    name = "nightfox.nvim",
                    colorscheme = "nightfox",
                },
                {
                    name = "nord.nvim",
                    colorscheme = "nord",
                },
                {
                    name = "penumbra.nvim",
                    colorscheme = "penumbra",
                },
                {
                    name = "sonokai",
                    colorscheme = "sonokai",
                },
                {
                    name = "tokyodark.nvim",
                    colorscheme = "tokyodark",
                },
                {
                    name = "tokyonight.nvim",
                    colorscheme = "tokyonight",
                },
                {
                    name = "yash.nvim",
                    colorscheme = "yash",
                },
                {
                    name = "catppuccin",
                    colorscheme = "catppuccin",
                },
                {
                    name = "edge",
                    colorscheme = "edge",
                },
                {
                    name = "kyotonight.vim",
                    colorscheme = "kyotonight",
                },
            },
            themeConfigFile = themery_config,
            livePreview = true,
        })
    end,
    -- cond = false,
}
