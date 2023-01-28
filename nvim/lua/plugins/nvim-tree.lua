vim.opt.termguicolors = true
require("nvim-tree").setup {
    actions = {
        open_file = {
          quit_on_open = true,
          resize_window = true,
          window_picker = {
            enable = false,
          },
        },
    },
}

local opts = { noremap=true, silent=true }
vim.keymap.set("n", "<leader>2", ":NvimTreeToggle<CR>", opts)

