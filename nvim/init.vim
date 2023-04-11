"leader key
let mapleader = "\<space>"

"fix bufferline problem
silent :augroup bufferline
autocmd bufferline BufAdd * :source ~/.config/nvim/lua/plugins/bufferline.lua


lua require("basic")

"------------------------------Nerdcommenter------------------------------
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

"------------------------------indentLine------------------------------
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

"------------------------------fugitive------------------------------
"auto delete fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

"------------------------------lightline------------------------------
"status line color
"let g:lightline = { 'colorscheme': 'materia', }
"let g:lightline = { 'colorscheme': 'solarized', }
let g:lightline = {
            \ 'colorscheme': 'powerline',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \   'gitbranch': 'FugitiveHead'
            \ },
            \ }

"------------------------------quickmenu------------------------------
" enable cursorline (L) and cmdline help (H)
let g:quickmenu_options = "HL"

" clear all the items
call g:quickmenu#reset()

" choose a favorite key to show/hide quickmenu
noremap <silent><leader>1 :call quickmenu#toggle(0)<cr>

" section 1, Packer
call g:quickmenu#append('# Packer', '')
call g:quickmenu#append('Status', ':PackerStatus', 'select Status')
call g:quickmenu#append('Sync', ':PackerSync', 'select Sync')
call g:quickmenu#append('Install', ':PackerInstall', 'select Install')
call g:quickmenu#append('Clean', ':PackerClean', 'select Clean')
call g:quickmenu#append('Update', ':PackerUpdate', 'select Update')

" section 2, Git
call g:quickmenu#append('# Git', '')
call g:quickmenu#append('Status', ':Git')
call g:quickmenu#append('Commit', ':Git commit')
call g:quickmenu#append('Diff', ':Gdiffsplit')
call g:quickmenu#append('Log', 'Gclog')
call g:quickmenu#append('Current File History', ':0Gclog')

" section 3, Copilot
call g:quickmenu#append('# Copilot', '')
call g:quickmenu#append('Status', ':Copilot status')

"------------------------------#options------------------------------
set nocompatible                       "去掉vi的一致性
syntax on                              "开启语法高亮
set laststatus=2
set t_Co=256
set showcmd
set encoding=utf-8
set number                             "显示行号
set ruler
set cursorline
set showmatch
set hlsearch
set incsearch
"python
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set fileformat=unix

"标示空白字符
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"让vimrc配置变更立即生效
"autocmd BufWritePost .vimrc source %

" Enable folding
set foldenable
set foldmethod=indent
set foldlevel=99

"------------------------------ key map ------------------------------
"command line key map
cnoremap <C-a> <C-b>

"Keep search pattern at the center of the screen.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" 快速遍历缓冲区
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" 快速遍历quicklist
nnoremap <silent> [q :cprev<CR>
nnoremap <silent> ]q :cnext<CR>

"" Swap implementations of ` and ' jump to markers
" By default, ' jumps to the marked line, ` jumps to the marked line and
" column, so swap them
nnoremap ' `
nnoremap ` '

" 转换单词大小写
inoremap <C-]> <ESC>viw~ea

" 更方便的移动
"nnoremap j jzz
"nnoremap k kzz
nnoremap H ^
nnoremap L $

" 去除高亮
nnoremap <leader>n :nohl<CR>

" 快速退出
nnoremap <leader>q :wq<CR>

" 保存并source
nnoremap <leader>` :w<CR>:source %<CR>

" terminal
tnoremap <C-[> <C-\><C-n>

" tab
nnoremap [t gT
nnoremap ]t gt

" 关闭buffer不影响split window
cnoremap <silent> bd b#\|bd! #<CR>

filetype on
"filetype plugin on
autocmd FileType c map <leader>5 :w<CR> :silent make<CR> :copen<CR>
"------------------------------python------------------------------
"按F5运行python"
autocmd FileType python map <leader>5 :w<CR> :call RunPython()<CR>
function RunPython()
    let mp = &makeprg
    let ef = &errorformat
    let exeFile = expand("%:t")
    setlocal makeprg=python3\ -u
    set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
    silent make %
    copen
    let &makeprg = mp
    let &errorformat = ef
endfunction


"------------------------------Go------------------------------
autocmd FileType go map <leader>5 :w<CR> :GoRun %<CR>
