-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },
  {
    "rcarriga/nvim-notify",
    enabled = false,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    enabled = false,
  },
  {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function() require("hop").setup {} end,
    lazy = false,
    opts = {},
  },
}
