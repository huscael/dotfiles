local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>k", ":lua require('illuminate').goto_prev_reference()<CR>", opts)
vim.keymap.set("n", "<leader>j", ":lua require('illuminate').goto_next_reference()<CR>", opts)

