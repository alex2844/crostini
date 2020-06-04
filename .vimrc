syntax on
filetype plugin indent on
set shell=/bin/bash
set showtabline=2
set laststatus=2
set backspace=indent,eol,start
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8
set fencs=utf-8,cp1251,koi8-r,cp866
set smartindent
set autoindent
set cursorline
set ignorecase
set visualbell
set title
set hlsearch
set nowrap
set noswapfile
set pastetoggle=
set completeopt=longest,menuone
set clipboard=unnamed
set tabstop=4 softtabstop=0 shiftwidth=4 noexpandtab
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ enc=%{&encoding}\ %b\ %l,%c%V\ %P
au BufReadPost *.ipynb set syntax=json
hi CursorLine term=bold cterm=bold guibg=Grey40
vnoremap < <gv
vnoremap > >gv
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>
:command! -nargs=1 G :!git add . -A; git commit -m <f-args>; git push
:command! -nargs=1 GC :!git commit -m <f-args> %
:command! -nargs=1 GV :!npm version <f-args> && git push && git push --tags
:command! -nargs=1 GT :!git push && git tag v<f-args> && git push --tags
:command! GS :!git status
:command! D :call delete(expand('%')) | Explore!
:command! T :tabnew %:p:h
