local map = function(m, k, c)
  vim.api.nvim_set_keymap(m, k, c, { noremap = true, silent = true })
end

vim.g.mapleader = ' '
map('n', '<C-l>', ':<C-u>nohlsearch<CR>')

-- Telescope
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


--fzf.lua
local fzf = require('fzf-lua')
vim.keymap.set('n', '<leader>ff', fzf.files, {})
vim.keymap.set('n', '<leader>fg', fzf.live_grep, {})
vim.keymap.set('n', '<leader>fb', fzf.buffers, {})
vim.keymap.set('n', '<leader>fh', fzf.help_tags, {})
