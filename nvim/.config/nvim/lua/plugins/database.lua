return {
  "Kurren123/mssql.nvim",
  lazy = false,
  cmd = { "MSSQL", "MSSQLConnect", "MSSQLDisconnect", "MSSQLNewQuery" },
  keys = {
    { ",mc", "<cmd>MSSQLConnect<CR>", desc = "Connect to MS SQL" },
    { ",mr", "<cmd>MSSQLRunQuery<CR>", desc = "Run MS SQL Query" },
    { ",md", "<cmd>MSSQLDisconnect<CR>", desc = "Disconnect MS SQL" },
  },
  config = function()
    require("mssql").setup({
      keymap_prefix = ",m", 
      max_rows = 50,
      max_column_width = 50,
    })
 end,
}

