-- dictionary source for blink auto completion.
-- Install wordnet 'wn' package to get maximum out of the plugin.
-- https://github.com/Kaiser-Yang/blink-cmp-dictionary
return {
  "saghen/blink.cmp",
  event = { "InsertEnter", "CmdlineEnter" },
  dependencies = {
    {
      "L3MON4D3/LuaSnip",
      dependencies = { "rafamadriz/friendly-snippets" },
    },
    "xzbdmw/colorful-menu.nvim",
    "Kaiser-Yang/blink-cmp-dictionary",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  version = "*",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    snippets = { preset = "luasnip" },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    keymap = {
      preset = "enter",

      ["<Tab>"] = { "snippet_forward", "select_next", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "select_prev", "fallback" },
      ["<C-CR>"] = { "cancel" },
    },
    appearance = { use_nvim_cmp_as_default = true },
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 250,
        treesitter_highlighting = true,
        window = {
          border = "rounded",
        },
      },

      menu = {
        border = "rounded",

        draw = {
          columns = { { "kind_icon" }, { "label", gap = 1 } },
          components = {
            label = {
              text = function(ctx)
                return require("colorful-menu").blink_components_text(ctx)
              end,
              highlight = function(ctx)
                return require("colorful-menu").blink_components_highlight(ctx)
              end,
            },
          },
        },
      },
    },
  },
  opts_extend = { "sources.default" },
}
