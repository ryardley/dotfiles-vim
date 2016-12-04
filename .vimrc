set t_Co=256


if (empty($TMUX))
  if (has("termguicolors"))
    set termguicolors
  endif
endif
let g:onedark_termcolors=256

syntax on
set background=dark
colorscheme onedark
set number      "Show lines numbers
set ignorecase  "case insensitive search
set smartcase
set expandtab
set tabstop=2
"set equalalways


" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set autoread
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
Plugin 'mxw/vim-jsx'
Plugin 'vim-syntastic/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'elzr/vim-json'
Plugin 'tomtom/tcomment_vim'
Plugin 'godlygeek/tabular'
Plugin 'sheerun/vim-polyglot'
Plugin 'plasticboy/vim-markdown'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mileszs/ack.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'joshdick/onedark.vim'


call vundle#end()            " required
filetype plugin indent on    " required
"/Vundle

let g:onedark_termcolors=256
let g:airline_theme='onedark'

let NERDTreeShowHidden=1

"JSX/Javascript
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

"Get backspace working like in normal editors
"set backspace=indent,eol,start

" Search dotfiles in ctrlp
let g:ctrlp_dotfiles = 1

"Javascript Linting Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" Remap ; to : so it is easier to :w and :wq etc.
:nnoremap ; :
:nnoremap ;; ;
:vnoremap ; :
:vnoremap ;; ;

" Quick open vimrc
:nnoremap <leader>ev :e $MYVIMRC<cr>
" Quick NERDTree 
:nnoremap <leader>t :NERDTreeToggle<enter>

" Close tern window after YCMTern Autocomplete
autocmd CompleteDone * pclose

" Airline Theme
let g:airline_powerline_fonts = 1
"let g:airline_theme='bubblegum'
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

"ESLint on file save (:w)
autocmd BufWritePost *.js call RunESLint()
function RunESLint()
  silent execute "!eslint --fix %"
  :redraw!
endfunction


if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

:nnoremap <leader>f :Ack<space>

nmap <leader>w<left>   :leftabove  vnew<CR>
nmap <leader>w<right>  :rightbelow vnew<CR>
nmap <leader>w<up>     :leftabove  new<CR>
nmap <leader>w<down>   :rightbelow new<CR>


