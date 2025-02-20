-- dictionary source for blink auto completion.
-- Install wordnet 'wn' package to get maximum out of the plugin.
-- https://github.com/Kaiser-Yang/blink-cmp-dictionary
return {
  "saghen/blink.cmp",
  dependencies = {
    {
      "Kaiser-Yang/blink-cmp-dictionary",
      dependencies = { "nvim-lua/plenary.nvim" },
    },
    -- ... Other dependencies
  },
  opts = {
    sources = {
      -- Add 'dictionary' to the list
      default = { "dictionary" },
      providers = {
        dictionary = {
          module = "blink-cmp-dictionary",
          name = "Dict",
          -- Make sure this is at least 2.
          -- 3 is recommended
          min_keyword_length = 3,
          opts = {
            -- dictionary_directories = { vim.fn.expand("/usr/share/wordnet/") },
            dictionary_files = {
              -- "/usr/share/dictd/wn.index",
              -- "/usr/share/hunspell/en_GB-large.dic", -- Change to actial path
              vim.fn.stdpath("config") .. "/dict/words.txt",
            },
          },
        },
      },
    },
  },
}
