-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- autocmd("highlight Normal guibg=NONE ctermbg=NONE")
-- autocmd("highlight NvimTreeNormal guibg=NONE ctermbg=NONE")
--vim.cmd("autocmd WinEnter,FileType * Normal guibg=NONE ctermbg=NONE")
--vim.cmd("autocmd BufEnter * highlight Normal guibg=NONE ctermbg=NONE")
--vim.cmd("autocmd BufEnter * hi NvimTreeNormal guibg=NONE ctermbg=NONE")
--require("copilot").setup()
vim.opt.scrolloff = 10
