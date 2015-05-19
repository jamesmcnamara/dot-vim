colorscheme ron

" global settings
set nocompatible
syntax on
set mouse=a
set showmatch
set number
set ruler
set shell=bash
" highlight cursor in xy
"set cursorline
"set cursorcolumn

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

filetype plugin indent on

" custom movement
set scrolloff=8
set sidescrolloff=15
set whichwrap+=<,>,[,]

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
imap jj <Esc>
"   AutoCommands
autocmd BufEnter * lcd %:p:h

"   Pathogen bundles
execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
let g:jedi#use_splits_not_buffers = "top"
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

