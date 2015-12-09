""filetype off                  " required
filetype plugin on
filetype indent on
syntax on

" set mapleader to ,
let mapleader = ","
let maplocalleader = ","

" pathogen
execute pathogen#infect()

" autowrite when switching between files
set autowrite

"remap hjkl to jklö
noremap ö l
noremap l k
noremap k j
noremap j h

"Indent stuff
set smartindent

" papercolor dark
set t_Co=256
set background=light
colorscheme PaperColor
set number
set laststatus=2

"Better line wrapping
set wrap
set textwidth=79
set formatoptions=qrn1

""Set incremental searching"
set incsearch

"Highlight searching
set hlsearch

" case insensitive search
set ignorecase
set smartcase

"Enable code folding
set foldenable

"Hide mouse when typing
set mousehide

"Set up an HTML5 template for all new .html files
"autocmd BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl

" Saves file when Vim window loses focus
au FocusLost * :wa

" gundo
nnoremap <F5> :GundoToggle<CR>
" tagbar install: sudo apt-get install ctags
nmap <F8> :TagbarToggle<CR>
" NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2
" auto acitve file directory
autocmd BufEnter * silent! lcd %:p:h
" spelling
" set spell
set spelllang=en
" set spelllang=de
autocmd FileType python setlocal nospell
autocmd FileType C setlocal nospell

" syntastic preferences (syntax checking)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
" install pylint flake8
" Use flake8
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--ignore="E501,E302"'
",E261,E701,E241,E126,E127,E128,W801"'
" use :Errors to see a list of errors
let g:syntastic_mode_map = { 'passive_filetypes': ['tex'] }


let g:airline_powerline_fonts = 1
let g:airline_theme='PaperColor'
" https://github.com/powerline/fonts

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline' " status bar
Plugin 'tpope/vim-sensible'
Plugin 'sjl/gundo.vim'
Plugin 'NLKNguyen/papercolor-theme' " color theme
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'vim-scripts/apdl.vim'
Plugin 'scrooloose/syntastic' " syntax checking
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree' " nerdtree config in ~/.NERDBoo...
"Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'ap/vim-templates'
Plugin 'tpope/vim-fugitive' " git integration
Plugin 'hdima/python-syntax'
Plugin 'plasticboy/vim-markdown'
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
