local M = {
  "uga-rosa/cmp-dictionary",
  config = function()
    require("cmp_dictionary").setup({
      exact_length = 1, -- exact_length must match cmp sources entry keyword_length
      first_case_insensitive = true,
      document = {
        enable = false,
        command = { "wn", "${label}", "-over" },
      },
      max_number_items = 3000,
      debug = false,
      paths = {
        "/usr/share/hunspell/en_GB-large.dic",
        -- "~/.local/share/dict/aspell_lv/aspell_lv_no_conjugations.dict",  -- additional dict location can be provided
      },
    })
  end,
}

return M
