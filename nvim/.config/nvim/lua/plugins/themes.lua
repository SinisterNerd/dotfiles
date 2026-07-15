return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Load this before other plugins
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        integrations = {
          treesitter = true, -- Enable Treesitter syntax coloring
        },
      })
      -- Activate the colorscheme
      vim.cmd.colorscheme("catppuccin-nvim")
    end,
  },
  {
    "alaviss/nim.nvim",
    ft = { "nim" }, -- Lazy load only when opening Nim files
  }
}
