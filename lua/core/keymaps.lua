-- ====================================================================
-- TITLE : Neovim keymaps
-- ABOUT : sets some quality-of-life keymaps
-- ====================================================================

-- Set space as leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- Remap for exiting insert mode quickly
map('i', 'jk', '<Esc>', { desc = "Exit insert mode" })

-- Delete a word backwards in insert mode
map('i', '<C-B>', '<Esc>bi', { desc = "Delete word backwards" })

-- Stay in indent mode when shifting text in visual mode
map('v', '<', '<gv', { desc = "Indent left and stay" })
map('v', '>', '>gv', { desc = "Indent right and stay" })

-- Window navigation
map('n', '<C-h>', '<C-w>h', { desc = "Move to left window" })
map('n', '<C-j>', '<C-w>j', { desc = "Move to below window" })
map('n', '<C-k>', '<C-w>k', { desc = "Move to above window" })
map('n', '<C-l>', '<C-w>l', { desc = "Move to right window" })

-- Move lines up/down in normal and visual mode
map('n', '<A-j>', ':m .+1<CR>==', { desc = "Move line down" })
map('n', '<A-k>', ':m .-2<CR>==', { desc = "Move line up" })
map('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Center search results
map('n', 'n', 'nzzzv', { desc = "Next search, center cursor" })
map('n', 'N', 'Nzzzv', { desc = "Previous search, center cursor" })

-- Use system clipboard
map('n', '<Leader>y', '"+y', { desc = "Yank to system clipboard" })
map('v', '<Leader>y', '"+y', { desc = "Yank selection to system clipboard" })
map('n', '<Leader>p', '"+p', { desc = "Paste from system clipboard" })
map('v', '<Leader>p', '"+p', { desc = "Paste over selection" })

-- Delete without copying to register
map('n', '<Leader>d', '"_d', { desc = "Delete without yank" })
map('v', '<Leader>d', '"_d', { desc = "Delete selection without yank" })

-- Save and quit
map('n', '<Leader>w', ':w<CR>', { desc = "Save file" })
map('n', '<Leader>q', ':q<CR>', { desc = "Quit buffer" })
map('n', '<Leader>x', ':wq<CR>', { desc = "Save and quit" })

-- Buffer navigation
map('n', '<S-l>', ':bnext<CR>', { desc = "Next buffer" })
map('n', '<S-h>', ':bprevious<CR>', { desc = "Previous buffer" })
map('n', '<Leader>bd', ':bdelete<CR>', { desc = "Close buffer" })

-- File explorer
map('n', '<Leader>e', ':Ex<CR>', { desc = "Open explorer" })
