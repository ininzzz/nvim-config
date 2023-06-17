vim.g.mapleader =  " "

local keymap = vim.keymap.set
local opts = { noremap = true }

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

keymap("n", "<C-s>", "<cmd>w<cr>", opts)

keymap("n", "<A-Down>", "<cmd>move .+1<cr>", { desc = "Move down", silent = true })
keymap("i", "<A-Down>", "<cmd>move .+1<cr>", { desc = "Move down", silent = true })
keymap("n", "<A-Up>", "<cmd>move .-2<cr>", { desc = "Move up", silent = true })
keymap("i", "<A-Up>", "<cmd>move .-2<cr>", { desc = "Move up", silent = true })

keymap("n", "<esc>", "<cmd>nohlsearch<cr><esc>", { desc = "Escape and clear hlsearch", silent = true })

keymap("n", "<Tab>", "<cmd>BufferLineCyclePrev<cr>", opts)
keymap("n", "<S-Tab>", "<cmd>BufferLineCycleNext<cr>", opts)
