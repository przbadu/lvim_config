-- keymappings.lua

local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
-- local expr_opts = { noremap = true, expr = true, silent = true }

-- Set the leader key to "space"
lvim.leader = "space"

-- Map Ctrl + s to save buffer
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- Center search results
keymap("n", "n", "nzz", default_opts)
keymap("n", "N", "Nzz", default_opts)

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP', default_opts)

-- Switch buffers
keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap("n", "<S-l>", ":bnext<CR>", default_opts)
keymap("n", "<TAB>", ":bnext<CR>", default_opts)

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

-- Move selected line / block of text in visual mode
-- It is already re-mapped with Alt + J/K, which is more non conflicting key
-- keymap("x", "K", ":move '<-2<CR>gv-gv", default_opts)
-- keymap("x", "J", ":move '>+1<CR>gv-gv", default_opts)

-- Resizing panes
-- Remapped with C- left, right, up, down keys
-- keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
-- keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
-- keymap("n", "<Up>", ":resize -1<CR>", default_opts)

-- dap
vim.keymap.set('n', '<F5>', require 'dap'.continue)
vim.keymap.set('n', '<F10>', require 'dap'.step_over)
vim.keymap.set('n', '<F11>', require 'dap'.step_into)
vim.keymap.set('n', '<F12>', require 'dap'.step_out)
vim.keymap.set('n', '<leader>B', require 'dap'.toggle_breakpoint)
-- vim.keymap.set('n', '<leader>b', require 'dap'.toggle_breakpoint)

-- Save and close all the windows (:wqa)
vim.keymap.set({ "i", "n" }, "<C-s><C-s>", "<cmd>silent! xa<cr><cmd>qa<cr>", { desc = "Save all and quit" })

-- Spectre
vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', { desc = "Toggle Spectre" })
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { desc = "Search current word" })
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', { desc = "Search current word" })
vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', { desc = "Search on current file" })

