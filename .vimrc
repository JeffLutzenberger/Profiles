set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin indent off     " reset plugin indent
set runtimepath+=$GOROOT/misc/vim
syntax on                      " show syntax highlighting
filetype plugin indent on
set laststatus=2               " always show powerline
:set number                    " show line numbers
:colorscheme zenburn           " nice color scheme
:set mouse=a                   " enable mouse scrolling, selection, etc
:set clipboard=unnamed          " make selections go to mac clipboard
vnoremap <C-c> "*y

" activate visual mode in normal mode
nmap <S-Up> V
nmap <S-Down> V
nmap <S-Left> V
nmap <S-Right> V
" these are mapped in visual mode
vmap <S-Up> k
vmap <S-Down> j
vmap <S-Left> h
vmap <S-Right> l

" Use CTRL-S for saving, also in Insert mode
:nnoremap <C-S>     :<C-U>update<CR>
:vnoremap <C-S>     :<C-U>update<CR>gv
:cnoremap <C-S>     <C-C>:update<CR>
:inoremap <C-S>     <C-O>:update<CR>

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
 
" start up vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
"  " required! 
Bundle 'gmarik/vundle' 
Bundle 'Lokaltog/powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'klen/python-mode'
Bundle 'hallettj/jslint.vim'
Bundle 'jnwhiteh/vim-golang' 
Bundle 'Blackrush/vim-gocode'
Bundle 'Townk/vim-autoclose'
Bundle 'tpope/vim-fugitive'

set rtp+=/Users/jefflutzenberger/.vim/bundle/powerline/powerline/bindings/vim
 
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set ruler
"show the ruler
:set colorcolumn=100
highlight ColorColumn ctermbg=DarkGray
 
map <F2> :NERDTreeToggle<CR>
au VimEnter * NERDTreeToggle

"map <leader>t :FuzzyFinderTextMate<CR>
":set autowrite
 
set t_Co=1024 "make the colors show up in powerline 
let g:Powerline_symbols = 'fancy'
 
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_checker_args="--ignore=E501,W601"
let g:pymode_lint_ignore="E501,W601"
 
" Disable python folding in klen/python-mode
let g:pymode_folding = 0
 
":set tags=/Users/jefflutzenberger/sandbox/jeff_bigsky/bigsky/tags
 
let g:NERDTreeWinSize = 40 
 
"find and replace with ctrl-r
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left><left>
 
" XML
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

set runtimepath+=/usr/local/go/misc/vim 

"Go
au FileType go au BufWritePre <buffer> Fmt
let g:SuperTabDefaultCompletionType = "context"
au BufRead,BufNewFile *.md set filetype=markdown
