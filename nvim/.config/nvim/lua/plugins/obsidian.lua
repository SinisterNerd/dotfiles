return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",  -- Always pin to the latest stable release
  lazy = false,   -- CRITICAL: Must be false so it runs setup() on startup
  ft = "markdown", -- Fallback trigger if lazy load happens
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- Explicitly invoke the internal setup loop
    require("obsidian").setup({
      workspaces = {
        {
          name = "personal",
          path = vim.fn.expand("/Users/rspence/Library/Mobile Documents/iCloud~md~obsidian/Documents/personal/"), -- Properly handles the '~' expansion
        },
        {
          name = "work",
          path = vim.fn.expand("/Users/rspence/Library/Mobile Documents/iCloud~md~obsidian/Documents/work/"), -- Properly handles the '~' expansion
        },

      },
      -- Optional: Safe defaults to prevent early errors
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },
    })
  end,
}
