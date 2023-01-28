require('nightfox').setup({
  options = {
    styles = {
      comments = "italic",
    }
  }
})
vim.cmd("colorscheme nightfox")
vim.cmd(":highlight Visual guibg=#145762")
vim.g.lightline = { colorscheme = "nightfox" }
