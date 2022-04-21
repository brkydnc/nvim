-- Local to buffer
vim.bo.tabstop=4
vim.bo.shiftwidth=4
vim.bo.expandtab = true
vim.bo.smartindent = true

-- Local to window
vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.colorcolumn = "80"

-- Global
vim.o.smarttab = true
vim.o.clipboard = "unnamedplus"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.timeoutlen= 500
vim.o.showmode = false
vim.cmd("let g:coq_settings = { 'auto_start': 'shut-up' }")
