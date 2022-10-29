local is_avaliable = utils.is_avaliable

local opts = { noremap = true, silent = true }

local map = vim.api.nvim_set_keymap

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Normal
-- Standard Operations
map('t', '<esc>', '<C-\\><C-n>', opts)
map('n', '<C-Left>', '<C-w>h', opts)
map('n', '<C-Right>', '<C-w>l', opts)
map('n', '<C-Down>', '<C-w>j', opts)
map('n', '<C-Up>', '<C-w>k', opts)
map('t', '<C-Left>', '<C-\\><C-n><C-w>h', opts)
map('t', '<C-Right>', '<C-\\><C-n><C-w>l', opts)
map('t', '<C-Down>', '<C-\\><C-n><C-w>j', opts)
map('t', '<C-Up>', '<C-\\><C-n><C-w>k', opts)

map('n', 'vs', ':vsplit<CR>', opts)

map('n', '<C-h>', ':vertical resize -2<CR>', opts)
map('n', '<C-l>', ':vertical resize +2<CR>', opts)
map('n', '<leader>w', '<cmd>w<cr>', opts)
map('n', '<leader>h', '<cmd>nohlsearch<cr>', opts) -- No Highlight

-- Packer
map('n', '<leader>pi', '<cmd>PackerInstall<cr>', opts) -- Packer Install
map('n', '<leader>ps', '<cmd>PackerSync<cr>', opts)

-- Alpha
map('n', '<leader>d', '<cmd>Alpha<cr>', opts)

-- Bufdelete
map('n', '<leader>q', ':Bdelete<cr>', opts)

-- Buffline
map('n', '<S-Left>', '<cmd>BufferLineCyclePrev<cr>', opts)
map('n', '<S-Right>', '<cmd>BufferLineCycleNext<cr>', opts)

-- Comment
map('n', '<leader>/', '<cmd>lua require("Comment.api").toggle.linewise.current()<cr>', opts)

-- Toggleterm
map('n', '<F7>', '<cmd>ToggleTerm<cr>', opts)
map('t', '<F7>', '<cmd>ToggleTerm<cr>', opts)



map('n', 'nt', ':NvimTreeToggle<CR>', opts)

map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)
