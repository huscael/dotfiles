require('telescope').setup {
    defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        mappings = {
        },
    },
    pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
    },
    extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
    }
}

-- key mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>tt', builtin.treesitter, {})
vim.keymap.set('n', '<leader>tf', builtin.find_files, {})
vim.keymap.set('n', '<leader>tg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>tb', builtin.buffers, {})
vim.keymap.set('n', '<leader>tq', builtin.quickfix, {})
vim.keymap.set('n', '<leader>tr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>ti', builtin.lsp_implementations, {})
