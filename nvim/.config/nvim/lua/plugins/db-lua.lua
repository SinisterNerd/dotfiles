return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "Kurren123/mssql.nvim" },
  opts = {
      sections = {
        lualine_c = {
          require('mssql').lualine_component,
        },
      },
    },
}
