local codicons = require("codicons")

local config = {
    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = false,
    position = 'right',
    relative_width = true,
    width = 25,
    auto_close = false,
    show_numbers = false,
    show_relative_numbers = false,
    show_symbol_details = true,
    preview_bg_highlight = 'Pmenu',
    autofold_depth = 2,
    auto_unfold_hover = true,
    fold_markers = { '', '' },
    wrap = false,
    keymaps = { -- These keymaps can be a string or a table for multiple keys
        close = { "<Esc>", "q" },
        goto_location = "<Cr>",
        focus_location = "o",
        hover_symbol = "<C-space>",
        toggle_preview = "K",
        rename_symbol = "r",
        code_actions = "a",
        fold = "h",
        unfold = "l",
        fold_all = "W",
        unfold_all = "E",
        fold_reset = "R",
    },
    lsp_blacklist = {},
    symbol_blacklist = {},
    symbols = {
        File = { icon = codicons.get("symbol-file", "icon"), hl = "TSURI" },
        Module = { icon = codicons.get("symbol-module", "icon"), hl = "TSNamespace" },
        Namespace = { icon = codicons.get("symbol-namespace", "icon"), hl = "TSNamespace" },
        Package = { icon = codicons.get("symbol-package", "icon"), hl = "TSNamespace" },
        Class = { icon = codicons.get("symbol-class", "icon"), hl = "TSType" },
        Method = { icon = codicons.get("symbol-method", "icon"), hl = "TSMethod" },
        Property = { icon = codicons.get("symbol-property", "icon"), hl = "TSMethod" },
        Field = { icon = codicons.get("symbol-field", "icon"), hl = "TSField" },
        Constructor = { icon = codicons.get("symbol-constructor", "icon"), hl = "TSConstructor" },
        Enum = { icon = codicons.get("symbol-enum", "icon"), hl = "TSType" },
        Interface = { icon = codicons.get("symbol-interface", "icon"), hl = "TSType" },
        Function = { icon = codicons.get("symbol-function", "icon"), hl = "TSFunction" },
        Variable = { icon = codicons.get("symbol-variable", "icon"), hl = "TSConstant" },
        Constant = { icon = codicons.get("symbol-constant", "icon"), hl = "TSConstant" },
        String = { icon = codicons.get("symbol-string", "icon"), hl = "TSString" },
        Number = { icon = codicons.get("symbol-number", "icon"), hl = "TSNumber" },
        Boolean = { icon = codicons.get("symbol-boolean", "icon"), hl = "TSBoolean" },
        Array = { icon = codicons.get("symbol-array", "icon"), hl = "TSConstant" },
        Object = { icon = codicons.get("symbol-object", "icon"), hl = "TSType" },
        Key = { icon = codicons.get("symbol-key", "icon"), hl = "TSType" },
        Null = { icon = codicons.get("symbol-null", "icon"), hl = "TSType" },
        EnumMember = { icon = codicons.get("symbol-enumMember", "icon"), hl = "TSField" },
        Struct = { icon = codicons.get("symbol-struct", "icon"), hl = "TSType" },
        Event = { icon = codicons.get("symbol-event", "icon"), hl = "TSType" },
        Operator = { icon = codicons.get("symbol-operator", "icon"), hl = "TSOperator" },
        TypeParameter = { icon = codicons.get("symbol-typeParameter", "icon"), hl = "TSParameter" }
    }
}

require("symbols-outline").setup(config)

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>3", "::SymbolsOutline<CR>", opts)
