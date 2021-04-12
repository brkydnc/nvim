local map = function(m, k, c)
  vim.api.nvim_set_keymap(m, k, c, { noremap = true, silent = true })
end

vim.g.mapleader = ' '
map('n', '<C-l>', ':<C-u>nohlsearch<CR>')
map('n', '<Leader>f>', ':Files<CR>')
