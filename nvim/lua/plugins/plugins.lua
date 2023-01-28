return require('packer').startup(function(use)
    -- Packer itself
    use 'wbthomason/packer.nvim'
    -- old vim plugins
    use 'itchyny/lightline.vim'
    use 'tpope/vim-surround'
    use 'skywind3000/quickmenu.vim'
    use 'Yggdroot/indentLine'
    -- LSP config
    use 'neovim/nvim-lspconfig'
    -- 自动下载Language Server
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- nvim-tree
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'
    -- buffer-line
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
    -- LSP completion
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    use 'hrsh7th/cmp-buffer' -- { name = 'buffer' },
    use 'hrsh7th/cmp-path' -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline' -- { name = 'cmdline' }
    use 'hrsh7th/nvim-cmp'
    -- LSP UI美化
    -- use({ "glepnir/lspsaga.nvim", branch = "main" })
    -- LSP outline
    use 'simrat39/symbols-outline.nvim'
    -- code symbols
    use 'mortepau/codicons.nvim'
    -- snippet
    use 'hrsh7th/cmp-vsnip' -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    -- 常用代码段
    use 'rafamadriz/friendly-snippets'
    -- 代码提示中分类图标
    use 'onsails/lspkind-nvim'
    -- colorscheme(support treesitter, bufferline, etc.)
    use 'shaunsingh/nord.nvim'
    use 'ful1e5/onedark.nvim'
    use "EdenEast/nightfox.nvim"
    -- telescope
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { {'nvim-lua/plenary.nvim'} } }
    -- line decorator
    use{ 'mvllow/modes.nvim', tag = 'v0.2.0' }
    -- highlight the word under cursor
    use 'RRethy/vim-illuminate'
    -- golang
    use 'fatih/vim-go'
    -- brackets
    use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
    }
    -- git
    use 'airblade/vim-gitgutter'
    use 'tpope/vim-fugitive'
    -- comment
    use 'scrooloose/nerdcommenter'
end)
