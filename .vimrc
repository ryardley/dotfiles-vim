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
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required
"/Vundle

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
" Airline Theme
let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled = 1

:nnoremap <leader>[ :bprevious<cr>
:nnoremap <leader>] :bnext<cr>

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

let g:ycm_key_list_select_completion=['<Enter>']
let g:ycm_key_list_previous_completion=[]

