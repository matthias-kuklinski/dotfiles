local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

vim.g.mapleader = ' ' -- Space

map('n', '<c-h>', ':wincmd h<CR>', options)
map('n', '<c-j>', ':wincmd j<CR>', options)
map('n', '<c-k>', ':wincmd k<CR>', options)
map('n', '<c-l>', ':wincmd l<CR>', options)
map('n', '<leader>e', ':NvimTreeToggle<CR>', options)
