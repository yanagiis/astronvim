-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = false, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = false, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = true, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap
        colorcolumn = "80",
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map
        ["<leader>ka"] = { "<cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code Readability Analysis" },
        ["<leader>kd"] = { "<cmd>ChatGPTRun docstring<CR>", desc = "docstring"},
        ["<leader>kg"] = { "<cmd>ChatGPTRun grammar_correction<CR>", desc = "grammar Correction"},
        ["<leader>ko"] = { "<cmd>ChatGPTRun optimize_code<CR>", desc = "optimize code"},
        ["<leader>lg"] = { "<cmd>:lua require('neogen').generate()<CR>", desc = "generate comment" },
        ["<leader><space>w"] = { "<cmd>:HopWord<cr>", desc = "Hop any word" },
        ["<leader><space>b"] = { "<cmd>:HopWord<cr>", desc = "Hop any word" },
        ["<leader><space>c"] = { "<cmd>:HopChar1<cr>", desc = "Hop any char" },
        [";"] = { ":" },
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
    },
  },
}
