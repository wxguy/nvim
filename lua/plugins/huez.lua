-- Colour chooser based on telescope
-- https://github.com/vague2k/huez.nvim
return {
  "vague2k/huez.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  -- if you want registry related features, uncomment this
  -- import = "huez-manager.import"
  branch = "stable",
  event = "UIEnter",
  fallback = "tokyonight",
  config = function()
    require("huez").setup({})
  end,
}
