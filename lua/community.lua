-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.ansible" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.zig" },
  { import = "astrocommunity.editing-support.neogen" },
  {
    import = "astrocommunity.editing-support.chatgpt-nvim",
    config = function()
      local config_dir = vim.fn.stdpath "config"
      require("chatgpt").setup {
        -- this config assumes you have OPENAI_API_KEY environment variable set
        openai_params = {
          model = "gpt-4o-mini",
          frequency_penalty = 0,
          presence_penalty = 0,
          max_tokens = 32768,
          temperature = 0.2,
          top_p = 0.1,
          n = 1,
        },
        actions_paths = { config_dir .. "chatgpt.json" },
      }
    end,
  },
  { import = "astrocommunity.git.octo-nvim" },
  { import = "astrocommunity.git.blame-nvim" },
  { import = "astrocommunity.utility.telescope-fzy-native-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  {
    import = "astrocommunity.motion.hop-nvim",
    config = function() require("hop").setup {} end,
  },
  {
    import = "astrocommunity.completion.copilot-lua",
    tag = "*",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function() require("copilot").setup {} end,
  },
  { import = "astrocommunity.debugging.persistent-breakpoints-nvim" },
  { import = "astrocommunity.debugging.telescope-dap-nvim" },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.utility.lua-json5" },
  -- import/override with your plugins folder
}
