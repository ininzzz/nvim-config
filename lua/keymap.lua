local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true }

vim.g.mapleader = ' '

keymap('i', 'jk', '<Esc>', default_opts)
keymap('i', 'jk', '<C-\\><C-n>', default_opts)

keymap('n', '<', '<gv', default_opts)
keymap('n', '>', '>gv', default_opts)

keymap('n', '<C-h>', '<C-w>h', default_opts)
keymap('n', '<C-l>', '<C-w>l', default_opts)
keymap('n', '<C-j>', '<C-w>j', default_opts)
keymap('n', '<C-k>', '<C-w>k', default_opts)

keymap('n', '<C-s>', ':w<CR>', default_opts)
