vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- move between windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

-- move between buffers
keymap("n", "<Tab>", "<cmd>BufferLineCyclePrev<cr>", opts)
keymap("n", "<S-Tab>", "<cmd>BufferLineCycleNext<cr>", opts)

-- move cursor
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)

-- move line
keymap("n", "<A-Down>", "<cmd>move .+1<cr>", opts)
keymap("i", "<A-Down>", "<cmd>move .+1<cr>", opts)
keymap("n", "<A-Up>", "<cmd>move .-2<cr>", opts)
keymap("i", "<A-Up>", "<cmd>move .-2<cr>", opts)

-- base operation
keymap("i", "jk", "<esc>", opts)
keymap("n", "<C-a>", "ggVG", opts)
keymap("n", "<C-s>", "<cmd>w<cr>", opts)
keymap("n", "<esc>", "<cmd>nohlsearch<cr><esc>", opts)
