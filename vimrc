" Start vim-pathogen and load run the bundles
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Set color scheme
set background=dark
if has("gui_running") " Doesn't seem to work right on the command line
    colorscheme murphy
endif

" Enable current line highlighting
set cul

" Show line numbers
set number

" Don't write on a buffer switch
set noautowrite

" Make sure there are enough lines of context around search when possible to
" center the search result in the buffer window.
set scrolloff=999

" Mark the 81st column to avoid writing long lines of code.
set colorcolumn=81

" Move to next/previous line when using arrow keys
set whichwrap+=<,>,h,l

" Show matching brace
set showmatch

" Highlight on searches <C-L> to turn off after search
set hlsearch

" Tabs to spaces
set expandtab
set shiftwidth=4
set tabstop=4
"set smartindent

set undolevels=1000

" Remove Trailing Whitespace:
" Caution! This can cause whitespace conflicts on files created by other
" people.
autocmd BufWritePre * :%s/\s\+$//e


if has("gui_running") " Doesn't seem to work right on the command line
    " Start NERDTree and move cursor to the edit buffer
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p

    " Open the Quick Fix window
    copen 6
endif

let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
