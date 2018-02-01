" global settings
set t_Co=256 
set nocompatible
syntax on
set mouse=a
set showmatch
set number
set ruler
set shell=/bin/bash
set hidden
let mapleader=","
" set clipboard=unnamedplus

" indent settings
set autoindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set nohlsearch

" highlighting shows tabs as pipes 
set list listchars=tab:\|\ 

" search options
set ignorecase
set smartcase
set incsearch
set showcmd


" custom movement
set scrolloff=8
set sidescrolloff=15
set whichwrap+=<,>,[,]
set backspace=2

"   Replace grep with ag
if executable('ag')
      " Use ag over grep
    set grepprg=ag
      "
      "     " Use ag in CtrlP for listing files. Lightning fast and respects
      "     .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

"   key mappings
nmap <Space> i <Esc>r
nmap <C-E> :NERDTreeToggle<CR>
nmap <C-T> :TagbarToggle<CR>
nmap <C-H> :A<CR>
nmap <C-G> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <C-F> :YcmDiag <CR>
nmap <C-L> :lclose <CR>
nmap <C-C> :echo col(".")<CR>
nmap <C-B> :Gblame<CR>
nmap <C-Q> :xa<CR>
nmap <C-C> :xa<CR>
nmap <C-X> :x<CR>
nmap <C-S> :wa<CR>
autocmd Filetype javascript nmap <C-D> :ImportJSFix<CR>
autocmd Filetype javascript nmap <C-F> :ImportJSGoto<CR>
autocmd Filetype ocaml nmap <C-F> :MerlinLocate <CR>
nmap <C-A> :NERDTreeFind<CR>
autocmd Filetype javascript nmap fd :FlowJumpToDef<CR>
autocmd Filetype javascript nmap ft :FlowType<CR>
autocmd Filetype ocaml nmap ft :MerlinTypeOf<CR>
map <A-]> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
imap <C-=> "<-"

" Gui Options
set go=-m
set go=-t
if has("gui_running")
    set guifont=Source\ Code\ Pro\ 12
    set lines=999 columns=999
    colorscheme navajo-night 
else
    colorscheme ron
endif

" Sources
so ~/.vim/plugin/a.vim 

" Status line
set statusline=%t       "tail of the filename
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

"   AutoCommands
autocmd BufEnter * lcd %:p:h

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'manicmaniac/coconut.vim'
Plugin 'tpope/vim-classpath'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dag/vim-fish'
Plugin 'flowtype/vim-flow'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-fireplace'
Plugin 'airblade/vim-gitgutter'
Plugin 'jparise/vim-graphql'
Plugin 'Galooshi/vim-import-js'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'davidhalter/jedi-vim'
Plugin 'conormcd/matchindent.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/paredit.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'scrooloose/syntastic'
Plugin 'ternjs/tern_for_vim' 
Plugin 'majutsushi/tagbar'
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-salve'
Plugin 'derekwyatt/vim-scala'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'rust-lang/rust.vim'
Plugin 'mtth/scratch.vim'
Plugin 'rdnetto/YCM-Generator'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

" Plugin configs 

"   Ctrl+P
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = {
    \ 'file': '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py',
    \ 'dir': 'node_modules'
    \ }
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 'ra'

" Flow
let g:flow#autoclose = 1

"   Jedi
let g:jedi#use_splits_not_buffers = "top"

" JSX
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1

"   Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler_options = '-std=c++11 -stlib=libc++'
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
let g:syntastic_r_checkers = ['']
let g:syntastic_python_checkers = ['python']
let g:syntastic_ocaml_checkers = ['merlin']

"   TagBar
set tags=./tags,tags;
let g:tagbar_type_r = {
    \ 'ctagstype' : 'r',
    \ 'kinds'     : [
        \ 'f:Functions',
        \ 'g:GlobalVariables',
        \ 'v:FunctionVariables',
    \ ]
\ }

"   YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_enable_diagnostic_signs=1
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
