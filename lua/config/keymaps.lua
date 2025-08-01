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
map("n", "<C-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
map("n", "<C-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })
map("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
map("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })


map("n", "<leader>ml", "<C-w>l", { desc = "Move to the right window" })
map("n", "<leader>mh", "<C-w>h", { desc = "Move to the left window" })
map("n", "<leader>mj", "<C-w>j", { desc = "Move to the bottom window" })
map("n", "<leader>mk", "<C-w>k", { desc = "Move to the top window" })


vim.keymap.set('n', '<leader>q', function()
  local bufs = vim.fn.getbufinfo({ buflisted = true })
  if #bufs == 1 then
    vim.cmd('quit')
  else
    vim.cmd('bdelete')
  end
end, { desc = 'Close buffer or quit if last' })
