local opts = { noremap = true, silent = true }

local map = vim.api.nvim_set_keymap

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('n', '<C-Left>', '<C-w>h', opts)
map('n', '<C-Right>', '<C-w>l', opts)
map('n', '<C-Down>', 'ddp', opts)
map('n', '<C-Up>', 'ddkP', opts)

map('n', 'vs', ':vsplit<CR>', opts)

map('n', '<A-Left>', ':vertical resize -2<CR>', opts)
map('n', '<A-Right>', ':vertical resize +2<CR>', opts)

map('n', '<S-Left>', ':BufferLineCyclePrev<CR>', opts)
map('n', '<S-Right>', ':BufferLineCycleNext<CR>', opts)
map('n', 'q', ':bdelete<CR>', opts)

map('n', 'nt', ':NvimTreeToggle<CR>', opts)

map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)
