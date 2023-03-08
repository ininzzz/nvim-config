local keymap = vim.keymap.set
local default_opts = { noremap = true }

vim.g.mapleader = ' '

keymap('i', 'jk', '<Esc>', default_opts)
keymap('i', 'jk', '<C-\\><C-n>', default_opts)

keymap('n', '<', 'v<gv', default_opts)
keymap('n', '>', 'v>gv', default_opts)

keymap('n', '<C-h>', '<C-w>h', default_opts)
keymap('n', '<C-l>', '<C-w>l', default_opts)
keymap('n', '<C-j>', '<C-w>j', default_opts)
keymap('n', '<C-k>', '<C-w>k', default_opts)

keymap('n', '<C-s>', ':w<CR>', default_opts)


-- Bufdelete
keymap('n', '<leader>q', ':Bdelete<CR>', default_opts)

-- Bufferline
keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)

-- Comment
keymap('n', '<leader>/', ':lua require("Comment.api").toggle.linewise.current()<cr>', default_opts)
keymap('v', '<leader>/', '<esc>:lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<cr>', default_opts)

-- GitSigns
keymap('n', '<leader>gd', ':Gitsigns diffthis<cr>', default_opts)
keymap('n', '<leader>gh', ':Gitsigns reset_hunk<cr>', default_opts)
keymap('n', '<leader>gb', ':Gitsigns reset_buffer<cr>', default_opts)
keymap('n', '<leader>gs', ':Gitsigns stage_buffer<cr>', default_opts)
keymap('n', '<leader>gu', ':Gitsigns undo_stage_hunk<cr>', default_opts)

-- Nvim Tree
keymap('n', 'nt', ':NvimTreeToggle<CR>', default_opts)
