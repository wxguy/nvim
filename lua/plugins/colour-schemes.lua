-- Enable gruv box theme instead of default colour theme. This theme matches with my other gnome theme.
return {
  { "ellisonleao/gruvbox.nvim" },
  { "tiagovla/tokyodark.nvim" },
  { "Mofiqul/dracula.nvim" },
  config = function(_, opts)
    require("tokyodark").setup(opts) -- calling setup is optional
    vim.cmd([[colorscheme tokyodark]])
  end,
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      --colorscheme = "tokyodark",

      colorscheme = "dracula",
    },
  },
}
