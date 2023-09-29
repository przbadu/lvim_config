-- keymappings.lua

-- Set the leader key to "space"
lvim.leader = "space"

-- Map Ctrl + s to save buffer
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- Ctrl + s to save buffer
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- dap
vim.keymap.set('n', '<F5>', require 'dap'.continue)
vim.keymap.set('n', '<F10>', require 'dap'.step_over)
vim.keymap.set('n', '<F11>', require 'dap'.step_into)
vim.keymap.set('n', '<F12>', require 'dap'.step_out)
-- vim.keymap.set('n', '<leader>b', require 'dap'.toggle_breakpoint)

-- Save and close all the windows (:wqa)
vim.keymap.set({ "i", "n" }, "<C-s><C-s>", "<cmd>silent! xa<cr><cmd>qa<cr>", { desc = "Save all and quit" })

-- Spectre
vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', { desc = "Toggle Spectre" })
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { desc = "Search current word" })
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', { desc = "Search current word" })
vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', { desc = "Search on current file" })

