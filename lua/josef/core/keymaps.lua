vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- normal mode
vim.keymap.set("n", "<leader>nl", "<cmd>Lazy<CR>", { desc = "Lazy Package Manager" })
vim.keymap.set("n", "<leader>ct", "gg=G<CR>", { desc = "Retab the entire file" } )
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save in normal mode"} )

-- insert mode
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save in insert mode"} )
