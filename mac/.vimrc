syntax enable
"set background=light
"colorscheme solarized

:set hidden

:set number
:set mouse=a

"show buffers in tabs
:tab sball

"https://github.com/tpope/vim-pathogen
call pathogen#infect()

filetype plugin indent on

"start vim with NERDTree
autocmd VimEnter * NERDTree
"and make sure the cursor is in the file window
autocmd VimEnter * wincmd p
