vim.opt.termguicolors = true
vim.api.nvim_clear_autocmds({
    event = "BufAdd"
})
require("bufferline").setup {
    options = {
        mode = "buffers",
        numbers = "none",
        separator_style =  "slant",
        -- 使用 nvim 内置lsp
        diagnostics = "nvim_lsp",
        -- 左侧让出 nvim-tree 的位置
        offsets = { {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
        } },
        show_buffer_close_icons = false,
        sort_by = 'insert_after_current',
        show_close_icon = false,
        show_tab_indicators = false,
    },
    highlights = {
        -- fill = {
        --     bg = '#344156',
        -- },
        background = {
            bg = '#344156',
        },
        -- tab = {
        --     fg = '#500187',
        --     bg = '#1a222e'
        -- },
        -- tab_selected = {
        --     fg = '#8202dc',
        --     bg = '#1a222e'
        -- },
        -- tab_close = {
        --     bg = '#344156'
        -- },
    --     close_button = {
    --         bg = '#344156'
    --     },
    --     close_button_visible = {
    --         bg = '#344156'
    --     },
    --     close_button_selected = {
    --         bg = '#344156'
    --     },
        buffer_visible = {
            bg = '#344156',
        },
        buffer_selected = {
            fg = '#ffffff',
            bg = '#344156',
        },
        numbers = {
            bg = '#344156',
        },
        numbers_visible = {
            bg = '#344156',
        },
        numbers_selected = {
            bg = '#344156',
        },
        diagnostic = {
            bg = '#344156',
        },
        diagnostic_visible = {
            bg = '#344156',
        },
        diagnostic_selected = {
            bg = '#344156',
        },
        hint = {
            bg = '#344156'
        },
        hint_visible = {
            bg = '#344156'
        },
        hint_selected = {
            bg = '#344156',
        },
        hint_diagnostic = {
            bg = '#344156'
        },
        hint_diagnostic_visible = {
            bg = '#344156'
        },
        hint_diagnostic_selected = {
            bg = '#344156',
        },
        info = {
            bg = '#344156'
        },
        info_visible = {
            bg = '#344156'
        },
        info_selected = {
            bg = '#344156',
        },
        info_diagnostic = {
            bg = '#344156'
        },
        info_diagnostic_visible = {
            bg = '#344156'
        },
        info_diagnostic_selected = {
            bg = '#344156',
        },
        warning = {
            bg = '#344156'
        },
        warning_visible = {
            bg = '#344156'
        },
        warning_selected = {
            bg = '#344156',
        },
        warning_diagnostic = {
            bg = '#344156'
        },
        warning_diagnostic_visible = {
            bg = '#344156'
        },
        warning_diagnostic_selected = {
            bg = '#344156',
        },
        error = {
            bg = '#344156',
        },
        error_visible = {
            bg = '#344156'
        },
        error_selected = {
            bg = '#344156',
        },
        error_diagnostic = {
            bg = '#344156',
        },
        error_diagnostic_visible = {
            bg = '#344156'
        },
        error_diagnostic_selected = {
            bg = '#344156',
        },
        modified = {
            bg = '#344156'
        },
        modified_visible = {
            bg = '#344156'
        },
        modified_selected = {
            bg = '#344156'
        },
    --     duplicate_selected = {
    --         bg = '#344156'
    --     },
    --     duplicate_visible = {
    --         bg = '#344156'
    --     },
    --     duplicate = {
    --         bg = '#344156'
    --     },
        separator_selected = {
            fg = '#1a222e',
            bg = '#344156'
        },
        separator_visible = {
            fg = '#1a222e',
            bg = '#344156'
        },
        separator = {
            fg = '#1a222e',
            bg = '#344156'
        },
        -- indicator_selected = {
        --     bg = '#344156'
        -- },
        -- pick_selected = {
        --     bg = '#344156',
        -- },
        -- pick_visible = {
        --     bg = '#344156',
        -- },
        -- pick = {
        --     bg = '#344156',
        -- },
        -- offset_separator = {
        --     fg = '#1a222e',
        --     bg = '#344156',
        -- },
    };
}

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opts)
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opts)
