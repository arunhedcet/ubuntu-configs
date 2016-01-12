set nocompatible              " be iMproved, required
filetype off                  " required
set clipboard=unnamed
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'groenewege/vim-less'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
"Plugin 'maksimr/vim-jsbeautify'
"Plugin 'einars/js-beautify'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Townk/vim-autoclose'
"closes tags while typing
Plugin 'alvan/vim-closetag'
"closes open tags on ctrl+_ shortcut
Plugin 'docunext/closetag.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:





"control space settings
set nocompatible
set hidden



colorscheme solarized 
"let g:solarized_termcolors=256
set background=dark
syntax on " Enable syntax highlighting
set nu " Enable line numbers
set backspace=indent,eol,start
set cursorline "highlight currentline
" My PowerLine Configs
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256
    
set laststatus=2
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\


"# filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" My NerdTree shortcut
map <C-n> :NERDTreeToggle<CR>
"let NerdTreeDirArrows=0 "tree arrows disabled

let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.sw']
" $HOME/.vimrc
:set directory=$HOME/.vim/backups//

"Indentation
" by default, the indent is 2 spaces. 
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
"Indentation for WebDevelopment
autocmd FileType javascript,html,css,php set ai
autocmd FileType javascript,html,css,php set sw=2
autocmd FileType javascript,html,css,php set ts=2
autocmd FileType javascript,html,css,php set sts=2
autocmd FileType javascript,css,php set textwidth=79


"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" space open/closes folds
nnoremap <space> za
" <Enter> for newline without entering insert-mode
nmap <CR> o<Esc>

" My NerdTree shortcut
map <C-n> :NERDTreeToggle<CR>

" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon
" Keymaps for saving using ctrl+s
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR><C-C>


let mapleader = ","

nnoremap <leader>p :CtrlPBuffer<CR>
inoremap <leader>p :CtrlPBuffer<CR>
vnoremap <leader>p :CtrlPBuffer<CR>


" Tab movements
nnoremap <leader>m :tabn<CR>
nnoremap <leader>n :tabp<CR>


" For listing buffers
nnoremap <leader>b :buffers<CR>

" Splits tweaks {{{
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" For showing tabs,newlines,trailing-white-spaces,etc.
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list

function! NumberToggle()
  if(&rnu == 1)
    set rnu!
  else
    set rnu
  endif
endfunc

nnoremap <leader>l :call NumberToggle()<cr>


