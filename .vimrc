set nocompatible              " be iMproved, required
set shell=bash
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'

" added nerdtree
Plugin 'scrooloose/nerdtree'

"Plugin 'christoomey/vim-tmux-navigator'
"ram ram
Plugin 'tpope/vim-vividchalk'
Plugin 'w0ng/vim-hybrid'

"Language & Project specific plugins
Plugin 'timcharper/textile.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'nono/vim-handlebars'
Plugin 'solarnz/thrift.vim'
Plugin 'elzr/vim-json'
Plugin 'rodjek/vim-puppet'
Plugin 'elixir-lang/vim-elixir'
Plugin 'uarun/vim-protobuf'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'vim-scripts/fish.vim'
Plugin 'asciidoc/vim-asciidoc'
Plugin 'Chiel92/vim-autoformat'
Plugin 'fatih/vim-go'
Plugin 'mileszs/ack.vim'
Plugin 'rizzatti/dash.vim'

"
" " General plugins
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-repeat'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-dispatch'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'rking/ag.vim'
Plugin 'AndrewRadev/switch.vim'
Plugin 'milkypostman/vim-togglelist'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
Plugin 'w0rp/ale'

call vundle#end()            " required

call plug#begin()

Plug 'maralla/completor.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()


filetype plugin indent on    " required
syntax enable
"set background=dark
colorscheme spring-night
set term=screen-256color
"set tags=tags;/
set tags=./tags,tags;
"always show lines
set number
set hlsearch
set autoindent
set ignorecase
set smartcase

nmap <silent> <C-D> :NERDTreeToggle<CR>

"Move between tabs
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
"Save Shortcut
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
" To ignore plugin indent changes, instead use:
"filetype plugin on
"GO Tags config
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
"Asynchronous Lint Engine
set nocompatible
filetype off

let &runtimepath.=',~/.vim/bundle/ale'

filetype plugin on

"Indentation changes
"let g:indentLine_char = '.'
"let g:ycm_python_binary_path = 'python'
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"----------------------------------------------
"" Language: Golang
"----------------------------------------------
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

"" Run goimports when running gofmt
au FileType go let g:go_fmt_command = "goimports"

" Enable syntax highlighting per default
 au FileType go let g:go_highlight_functions = 1
 au FileType go let g:go_highlight_methods = 1
 au FileType go let g:go_highlight_structs = 1
 au FileType go let g:go_highlight_operators = 1
 au FileType go let g:go_highlight_build_constraints = 1
" " Show type information
au FileType go let g:go_auto_type_info = 1
"
" " Highlight variable uses
 au FileType go let g:go_auto_sameids = 1
"
" " Fix for location list when vim-go is used together with Syntastic
 let g:go_list_type = "quickfix"

 "----------------------------------------------
 " Plugin: 'junegunn/fzf.vim'
 "----------------------------------------------
 nnoremap <c-p> :Files<CR>
 
 "----------------------------------------------
