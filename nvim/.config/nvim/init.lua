--Customizations
-- Enable true terminal colors
vim.opt.termguicolors = true

-- Set background color (replace #1e1e2e with your hex color)
vim.api.nvim_set_hl(0, "Normal", { bg = "#1e1e2e" })
vim.api.nvim_set_hl(0, "NonText", { bg = "#1e1e2e" })

--Plugins
-- vim.pack.add({
--    { src = "https://github.com/catppuccin/nvim", name = "catppuccin" }
--})

require("config.lazy")
require('cmp').setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'omni' }, -- Pulls from mssql.nvim's omnifunc
    { name = 'buffer' },
  }
})
-- Add these capabilities to your LSP configs
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Example server setup
-- require("lspconfig").lua_ls.setup({
--  capabilities = capabilities,
--})
