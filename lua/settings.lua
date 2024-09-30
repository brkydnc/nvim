-- Local to buffer
vim.bo.textwidth = 80

-- Local to window
vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.colorcolumn = "80"

-- Global
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.expandtab = true
vim.o.softtabstop=4
vim.o.clipboard = "unnamedplus"
vim.o.mouse = "a"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.timeoutlen= 500
vim.o.showmode = false
vim.cmd("let g:coq_settings = { 'auto_start': 'shut-up' }")
