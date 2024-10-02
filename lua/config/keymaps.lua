-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local del = vim.keymap.del

map("i", "<leader>j", "<esc>", { desc = "escape" })
map({ "i", "x", "n", "s" }, "<leader>w", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Move to window using the <ctrl> hjkl keys
-- del("n", "<C-h>", { desc = "Go to Left Window", remap = true })
-- del("n", "<C-j>", { desc = "Go to Lower Window", remap = true })
-- del("n", "<C-k>", { desc = "Go to Upper Window", remap = true })
-- del("n", "<C-l>", { desc = "Go to Right Window", remap = true })

-- buffers
map("n", "<C-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<C-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>q", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
map("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })
