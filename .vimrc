
" general

syntax on

"Show lines numbers
set number      
set relativenumber 

"case insensitive search
set ignorecase  
set smartcase
set expandtab

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
set list lcs=trail:·,tab:»·
set hlsearch


" VUNDLE
" The following is from https://github.com/VundleVim/Vundle.vim
set nocompatible              
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Airline Theme
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
"let g:airline#extensions#tabline#enabled = 1

Plugin 'joshdick/onedark.vim'
" set t_Co=256
" set background=dark
" colorscheme onedark
" if (empty($TMUX))
"   if (has("termguicolors"))
"     set termguicolors
"   endif
" endif
" let g:onedark_termcolors=256
" let g:airline_theme='onedark'

Plugin 'scrooloose/nerdtree'
let NERDTreeShowHidden=1

Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_dotfiles = 1

Plugin 'pangloss/vim-javascript'

"JSX/Javascript
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

"Javascript Linting Settings
Plugin 'vim-syntastic/syntastic'
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

"ESLint on file save (:w)
autocmd BufWritePost *.js call RunESLint()
function RunESLint()
  silent execute "!eslint --fix %"
  :redraw!
endfunction

Plugin 'terryma/vim-multiple-cursors'
Plugin 'elzr/vim-json'
Plugin 'tomtom/tcomment_vim'
Plugin 'godlygeek/tabular'
Plugin 'sheerun/vim-polyglot'
Plugin 'plasticboy/vim-markdown'

Plugin 'SirVer/ultisnips'
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

Plugin 'tpope/vim-surround'

" Auto completion
Plugin 'Valloric/YouCompleteMe'
" Close tern window after YCMTern Autocomplete
autocmd CompleteDone * pclose
let g:ycm_key_list_select_completion=['<Enter>']
let g:ycm_key_list_previous_completion=[]

Plugin 'mileszs/ack.vim'
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

Plugin 'w0ng/vim-hybrid'


call vundle#end()            " required
filetype plugin indent on    " required
"/Vundle

" Mappings
" Remap ; to : so it is easier to :w and :wq etc.
:nnoremap ; :
:nnoremap ;; ;
:vnoremap ; :
:vnoremap ;; ;
" Quick open vimrc
:nnoremap <leader>ev :e $MYVIMRC<cr>
" Quick NERDTree 
:nnoremap <leader>t :NERDTreeToggle<enter>
:nnoremap <leader>[ :bprevious<cr>
:nnoremap <leader>] :bnext<cr>
:nnoremap <leader>f :Ack<space>
nmap <leader>w<left>   :leftabove  vnew<CR>
nmap <leader>w<right>  :rightbelow vnew<CR>
nmap <leader>w<up>     :leftabove  new<CR>
nmap <leader>w<down>   :rightbelow new<CR>
set background=dark
colorscheme hybrid
