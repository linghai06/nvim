-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ";"
vim.g.autoformat = false
vim.g.lazyvim_picker = 'fzf'

-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3

local opt = vim.opt
opt.relativenumber = false -- Relative line numbers

