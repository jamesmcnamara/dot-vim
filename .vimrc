
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
" set clipboard=unnamedplus

" indent settings
set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set showmatch

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
        "   let g:ctrlp_use_caching = 0
endif

"   key mappings
nmap <Space> i <Esc>r
nmap \e :NERDTreeToggle<CR>
nmap \t :TagbarToggle<CR>
nmap \a :Scratch<CR>
nmap \h :A<CR>
nmap \g :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap \f :YcmDiag <CR>
nmap \l :lclose <CR>
nmap \c :echo col(".")<CR>
nmap \b :Gblame<CR>
nmap \q :xa<CR>
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

Plugin 'kien/ctrlp.vim'
Plugin 'dag/vim-fish'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rust-lang/rust.vim'
Plugin 'mtth/scratch.vim'
Plugin 'rdnetto/YCM-Generator'

call vundle#end()
filetype plugin indent on

" Plugin configs 

"   Ctrl+P
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

"   Jedi
let g:jedi#use_splits_not_buffers = "top"

"   Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler_options = '-std=c++11 -stlib=libc++'
let g:syntastic_r_checkers = ['']
let g:syntastic_python_checkers = ['python']

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
