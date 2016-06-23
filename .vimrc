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

