vim.cmd('set updatetime=100')
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "]g", ":GitGutterNextHunk<CR>", opts)
vim.keymap.set("n", "[g", ":GitGutterPrevHunk<CR>", opts)
vim.keymap.set("n", "<leader>gp", ":GitGutterPreviewHunk<CR>", opts)
vim.keymap.set("n", "<leader>gs", ":GitGutterStageHunk<CR>", opts)
vim.keymap.set("n", "<leader>gu", ":GitGutterUndoHunk<CR>", opts)
