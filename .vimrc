let mapleader=","
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

let g:ale_linters = {
\   'javascript': ['standard'],
\}
let g:ale_fixers = {'javascript': ['standard']}
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

"latex
let g:livepreview_previewer='okular'

call plug#begin('~/.vim/plugged')
" Plug 'ayu-theme/ayu-vim'
" Plug 'arcticicestudio/nord-vim'
Plug 'dense-analysis/ale'
" latex
Plug 'xuhdev/vim-latex-live-preview',{'for':'tex'}
Plug 'lervag/vimtex'
Plug 'vim-latex/vim-latex'

Plug 'sirver/ultisnips'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-repeat'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/syntastic'

Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
" Plug 'zxqfl/tabnine-vim'
call plug#end()

"latex setting

autocmd Filetype tex setl updatetime=10
" nord-vim setting
" colorscheme nord
" gruvbox setting
colorscheme gruvbox 

" use system clipboard
set clipboard=unnamedplus
set number
set background=dark
" highlight
syntax on
set showmode
set showcmd
set encoding=utf-8
" 256 colors
set t_Co=256
" file recognize and indent
filetype indent on
" auto indent
set autoindent
" tab indent
set tabstop=4
" >> << == indent
set shiftwidth=4
" tap to space
set expandtab
" tap space counts
set softtabstop=4
" close auto change line
set nowrap
" wrap margin
set wrapmargin=2
" show state bar
set laststatus=1
" show ruler place in state bar
set ruler
" show match
set showmatch
" hightligth search
set hlsearch
" increase search
set incsearch
" ignorecase search
set ignorecase
" spell check
set spelllang=en_us
" save undo history
set undofile
set history=1000
" visual bell when things wrong
set visualbell
" alarm when changed by others
set autoread


