local map = function(m, k, c)
  vim.api.nvim_set_keymap(m, k, c, { noremap = true, silent = true })
end

vim.g.mapleader = ' '
map('n', '<C-l>', ':<C-u>nohlsearch<CR>')
map('n', '<Leader>f>', ':Files<CR>')

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
