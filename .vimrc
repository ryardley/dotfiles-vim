set t_Co=256
syntax on
set background=dark
colorscheme distinguished
set number      "Show lines numbers
set ignorecase  "case insensitive search
set smartcase
set expandtab
set tabstop=2
set equalalways


" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set copyindent
set preserveindent
set nofoldenable
set breakindent

" The following is from https://github.com/VundleVim/Vundle.vim
set nocompatible              
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mxw/vim-jsx'
Plugin 'vim-syntastic/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'elzr/vim-json'
Plugin 'tomtom/tcomment_vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required
"/Vundle

"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1

"JSX/Javascript
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']

"Get backspace working like in normal editors
set backspace=indent,eol,start

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

" Search dotfiles in ctrlp
let g:ctrlp_dotfiles = 1

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

"Try to autofix errors
"autocmd BufWritePost *.js !eslint --fix %

" Quick file save`
:nnoremap <Leader>s :update<CR>
" Quick close
:nnoremap <leader>w :q<cr>
" Quick quit
:nnoremap <leader>q :q!<cr>
" Quick open vimrc
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" NERDTree 
:nnoremap <leader>t :NERDTreeToggle<enter>
" YCMTern Autocomplete
autocmd CompleteDone * pclose

