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

vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

--run for cp
function CPPSET()
  --vim.api.nvim_buf_set_keymap(0, 'n', '<F9>', [[!g++ -std=c++14 % -o %:r -Wl,--stack,268435456]], { noremap = true })
  vim.api.nvim_buf_set_keymap(0, 'n', '<F9>', [[:w<CR>:!g++ % -O2 -o %< -std=c++11 && %< <CR>]], { noremap = true })
end

function JAVASET()
  vim.api.nvim_buf_set_keymap(0, 'n', '<F8>', [[:!javac %<CR]], { noremap = true })
  vim.api.nvim_buf_set_keymap(0, 'n', '<F9>', [[:!javac %<CR>:!clear;java %< %<CR]], { noremap = true })
end

vim.cmd([[
augroup FileTypeSettings
  autocmd!
  autocmd FileType cpp lua CPPSET()
  autocmd FileType java lua JAVASET()
augroup END
]])

