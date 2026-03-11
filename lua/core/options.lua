-- ====================================================================
-- TITLE : Neovim options
-- ABOUT : basic settings native to neovim
-- ====================================================================

-- Basic Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.spelllang = { "en" }

-- Tabbing / Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.grepprg = "rg --vimgrep"
vim.opt.grepformat = "%f:%l:%c:%m"

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- UI
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
--vim.opt.colorcolumn = "100"

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.cmdheight = 1
vim.opt.showmatch = true
vim.opt.matchtime = 2

vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.opt.pumheight = 10
vim.opt.pumblend = 10
vim.opt.winblend = 0

vim.opt.showmode = false

-- Files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true

-- Performance
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- QoL
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.hidden = true
vim.opt.wildmode = { "longest", "list", "full" }

-- Folding
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
