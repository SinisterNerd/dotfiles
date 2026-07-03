--Customizations
-- Enable true terminal colors
vim.opt.termguicolors = true

-- Set background color (replace #1e1e2e with your hex color)
vim.api.nvim_set_hl(0, "Normal", { bg = "#1e1e2e" })
vim.api.nvim_set_hl(0, "NonText", { bg = "#1e1e2e" })

--Plugins
vim.pack.add({
    { src = "https://github.com/catppuccin/nvim", name = "catppuccin" }
})
