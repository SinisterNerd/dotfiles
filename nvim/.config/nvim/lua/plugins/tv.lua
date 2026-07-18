return {
  "alexpasmantier/tv.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Tv",
  config = function()
    require("tv").setup({
      -- Default options
      tv_command = "tv", 
      window = {
        width = 0.8,
        height = 0.8,
        border = "rounded",
      },
    })
  end,
  keys = {
    -- Example keymaps to launch default Television channels
    { "<leader>ff", "<cmd>Tv files<cr>", desc = "Find Files (Television)" },
    { "<leader>fg", "<cmd>Tv git_files<cr>", desc = "Find Git Files" },
    { "<leader>fl", "<cmd>Tv live_grep<cr>", desc = "Live Grep" },
  }
}
