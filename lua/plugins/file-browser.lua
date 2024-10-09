return {
    -- add colorschemes
    { "ellisonleao/gruvbox.nvim" }, -- https://github.com/morhetz/gruvbox
    { "arcticicestudio/nord-vim" }, -- https://github.com/nordtheme/vim
    { "folke/tokyonight.nvim" }, -- https://github.com/folke/tokyonight.nvim
    { "rebelot/kanagawa.nvim" }, -- https://github.com/rebelot/kanagawa.nvim

    -- Configure LazyVim to load color schemes
    {
        "LazyVim/LazyVim",
        opts = {
            -- colorscheme = "gruvbox",
            colorscheme = "tokyonight-night", -- tokyonight-storm, tokyonight-day, tokyonight-moon
            -- colorscheme = "kanagawa-wave",  -- kanagawa-dragon, kanagawa-lotus
            -- colorscheme = "nord",
        },
    },
}
