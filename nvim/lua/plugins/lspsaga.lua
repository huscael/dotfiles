-- Features
-- lsp finder: can be replaced by telescope
-- outline: has bug
-- nice gd and gr
local keymap = vim.keymap.set
local saga = require('lspsaga')

saga.init_lsp_saga({
    code_action_lightbulb = {
        enable = false,
    },
})

local opts = { noremap = true, silent = true }
-- Lsp finder find the symbol definition implement reference
-- if there is no implement it will hide
-- when you use action in finder like open vsplit then you can
-- use <C-t> to jump back
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opts)

-- Code action
keymap({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)

keymap("n", "gr", "<cmd>Lspsaga rename<CR>", opts)

-- Peek Definition
-- you can edit the definition file in this flaotwindow
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)

keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
keymap("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
-- Only jump to error
keymap("n", "[E", function()
    require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, opts)
keymap("n", "]E", function()
    require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, opts)

keymap("n", "<leader>o", "<cmd>Lspsaga outline<CR>", opts)

keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
