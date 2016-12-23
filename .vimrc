set nocompatible
filetype off

" add Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'derekwyatt/vim-scala'
Plugin 'elzr/vim-json'
Plugin 'vim-ruby/vim-ruby'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'ctrlpvim/ctrlp.vim'

" init Vundle plugins
call vundle#end()            " required
filetype plugin indent on    " required

" syntax highlighting
syntax enable
set showmatch

" tab stuff
set tabstop=4
set softtabstop=4
set expandtab

" line numbers
set number

" indent to same level as prior line
set autoindent

" show command in bottom bar
set showcmd

set cursorline

set wildmenu

set ruler

set lazyredraw

set incsearch
set hlsearch

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

