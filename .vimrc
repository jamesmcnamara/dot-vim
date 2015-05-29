
" global settings
set t_Co=256 
set nocompatible
syntax on
set mouse=a
set showmatch
set number
set ruler
set shell=/bin/bash

" indent settings
set autoindent
set shiftround
set preserveindent
set shiftwidth=4
set tabstop=4
set expandtab
set showmatch

" highlighting shows tabs as pipes and spaces as underlines
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
nmap <Space> i_<Esc>r
nmap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nmap \e :NERDTreeToggle<CR>
nmap \t :TagbarToggle<CR>
nmap \g :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <A-]> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
imap jj <Esc>
nmap \a :A<CR>

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
so /home/jmcnamara/.vim/plugin/a.vim 


"   AutoCommands
autocmd BufEnter * lcd %:p:h

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'

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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler_options = " -std=c++11 -stlib=libc++"

"   YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_register_as_syntastic_checker = 0
