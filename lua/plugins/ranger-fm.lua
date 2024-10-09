return {
    {
        "kevinhwang91/rnvimr",
        cmd = "RnvimrToggle",
        setup = function()
            vim.g.rnvimr_enable_ex = 1 -- replace netrw
            vim.g.rnvimr_enable_picker = 1 -- use Ranger as a picker
        end,
    },
}
