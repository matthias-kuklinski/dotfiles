local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

vim.g.mapleader = ' ' -- Space

map('n', '<leader>e', ':NvimTreeToggle<CR>', options)
