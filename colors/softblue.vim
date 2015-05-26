" Vim color - Clarity
"  

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="clarity"

highlight Normal         gui=NONE guifg=LightBlue2   guibg=#1F3055
highlight Comment        gui=NONE guifg=Grey62       guibg=bg 
highlight PreProc        gui=NONE guifg=Salmon       guibg=bg 
highlight Precondit      gui=NONE guifg=Khaki3       guibg=bg
highlight Identifier     gui=NONE guifg=Khaki3       guibg=bg 
highlight Type           gui=BOLD guifg=Orange       guibg=bg 
highlight StorageClass   gui=BOLD guifg=Cornsilk2    guibg=bg
highlight Todo           gui=BOLD guifg=#1F3055      guibg=White 
highlight NonText        gui=NONE guifg=#334C51      guibg=SteelBlue4 
highlight LineNr         gui=NONE guifg=HoneyDew2    guibg=Grey25 
highlight StatusLineNC   gui=NONE guifg=Grey80       guibg=LightBlue4 
highlight StatusLine     gui=NONE guifg=DarkBlue     guibg=#FFFFCA 
highlight IncSearch      gui=NONE guifg=Black        guibg=#FFE568
highlight Search         gui=UNDERLINE,BOLD          guifg=#FFE568 guibg=bg
highlight Cursor         gui=NONE guifg=Grey50       guibg=#FFE568
highlight CursorIM       gui=NONE guifg=Grey50       guibg=#FFE568
highlight Title          gui=BOLD guifg=OliveDrab3   guibg=bg
highlight WarningMsg     gui=BOLD guifg=White        guibg=Red4
highlight String         gui=NONE guifg=Grey80       guibg=bg      
highlight Number         gui=NONE guifg=OliveDrab2   guibg=bg
highlight Constant       gui=NONE guifg=#ACEDAB      guibg=bg 
highlight Visual         gui=BOLD guifg=White        guibg=bg
highlight Directory      gui=NONE guifg=PeachPuff    guibg=bg
highlight DiffAdd        gui=NONE guifg=white        guibg=SeaGreen
highlight DiffChange     gui=BOLD guifg=white        guibg=Blue
highlight DiffDelete     gui=NONE guifg=Grey40       guibg=Grey20 
highlight DiffText       gui=BOLD guifg=HoneyDew1    guibg=FireBrick 
highlight Typedef        gui=NONE guifg=Cornsilk     guibg=bg
highlight Define         gui=NONE guifg=White        guibg=bg
highlight Tag            gui=NONE guifg=LightBlue2   guibg=bg
highlight Debug          gui=BOLD guifg=Green        guibg=bg
highlight Special        gui=NONE guifg=NavajoWhite  guibg=bg         
highlight SpecialChar    gui=NONE guifg=NavajoWhite  guibg=bg         
highlight Delimiter      gui=NONE guifg=NavajoWhite  guibg=bg         
highlight SpecialComment gui=NONE guifg=NavajoWhite3 guibg=bg         
highlight Conditional    gui=BOLD guifg=Wheat2       guibg=bg         
highlight Statement      gui=BOLD guifg=Pink3        guibg=bg 
highlight WildMenu       gui=NONE guifg=White        guibg=FireBrick
highlight browseSuffixes gui=NONE guifg=Cornsilk3    guibg=bg



" Vim color file
" Maintainer:	David Lazar <david#c7.campus.utcluj.ro>
" Last Change:	Fri Jan 31 01:08:13 UTC 2003
" Version:	1.0
" URL:		http://c7.campus.utcluj.ro/~david/coffee.vim
" 
" This colorscheme script was created using Hans Fugal's colorscheme template

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="coffee"

hi Normal	gui=none	guibg= #514c44 guifg=#b0a594

hi Cursor	gui=none	guibg=#ffffff	guifg=bg
hi link CursorIM Cursor
hi Directory					guifg=#ffffff
hi DiffAdd			guibg=#9e9485	guifg=bg
hi DiffDelete			guibg=#2e2b26	guifg=fg
hi DiffChange			guibg=#70695e	guifg=fg
hi DiffText			guibg=#70695e	guifg=#880000
hi ErrorMsg			guibg=#880000	guifg=#ffffff
hi Folded					guifg=#88c0c7
hi FoldColumn					guifg=#88c0c7
hi IncSearch			guifg=#fff0d6	guibg=#000000
hi LineNr			guibg=#000000	guifg=#ffff21
hi ModeMsg					guifg=#ffffff
hi MoreMsg					guifg=#00ff00
hi NonText					guifg=#61616d
hi Question					guifg=#ffff00
hi link Search IncSearch
hi SpecialKey					guifg=#ffffff
hi StatusLine			guibg=#000000	guifg=#deefff
hi StatusLineNC			guibg=#395956	guifg=#a4b1bd
hi VertSplit			guibg=#395956	guifg=#a4b1bd
hi Title					guifg=#ffffff
hi Visual			guifg=#fff0d6	guibg=#000000
hi VisualNOS			guifg=#dddddd	guibg=bg
hi WarningMsg					guifg=#ffff00
"hi WildMenu	
"hi Menu		
"hi Scrollbar	
"hi Tooltip		

" syntax highlighting groups
hi Comment					guifg=#1a1813
hi Constant					guifg=#cefece
hi Identifier					guifg=#cc7c3d
hi Statement					guifg=#effec5
hi PreProc					guifg=#85ff85
hi Type						guifg=#c6feeb
hi Special					guifg=#eeffee
hi Underlined	gui=underline			guifg=#ffffff
hi Ignore					guifg=fg
hi Error			guibg=bg	guifg=#ff4c4a
hi Todo				guibg=#aa0006	guifg=#fff300

" Vim color file
" Maintainer: Datila Carvalho <datila@hotmail.com>
" Last Change: May, 19, 2005
" Version: 0.2

" This is a VIM's version of the emacs color theme
" _Dark Blue2_ created by Chris McMahan.

""" Init stuff

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "darkblue2"


""" Colors

" GUI colors
hi Cursor               guifg=#233b5a guibg=Yellow
hi CursorIM             guifg=NONE guibg=Yellow
hi Directory            gui=bold guifg=cyan
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
hi DiffText             guibg=grey50
hi ErrorMsg             gui=bold guifg=White guibg=gray85
hi VertSplit            gui=bold guifg=NONE guibg=gray80
"hi Folded
"hi FoldColumn
"hi IncSearch
hi LineNr               gui=bold guifg=lightsteelblue guibg=#132b4a
hi ModeMsg              gui=bold
"hi MoreMsg
"hi NonText
hi Normal               guibg=#233b5a guifg=#fff8dc
"hi Question
hi Search               gui=bold guifg=#233b5a guibg=lightgoldenrod
"hi SpecialKey
hi StatusLine           guifg=steelblue4 guibg=lightgray 
hi StatusLineNC         guifg=royalblue4 guibg=lightsteelblue
"hi Title
hi Visual               guifg=steelblue guibg=fg
hi VisualNOS            gui=bold guifg=steelblue guibg=fg
hi WarningMsg           guifg=White guibg=Tomato
"hi WildMenu

hi User2                guifg=lightskyblue guibg=#021a39 gui=bold

" If using Motif/Athena
hi Menu                 guibg=#233b5a guifg=#fff8dc
hi Scrollbar            guibg=bg

" Colors for syntax highlighting
hi Comment              gui=italic guifg=mediumaquamarine

hi Constant             gui=bold guifg=lightgoldenrod1
    hi String           guifg=aquamarine
    hi Character        guifg=aquamarine
    hi Number           gui=bold guifg=lightgoldenrod1
    hi Boolean          gui=bold guifg=lightgoldenrod1
    hi Float            gui=bold guifg=lightgoldenrod1

hi Identifier           gui=bold guifg=palegreen
    hi Function         guifg=lightskyblue

hi Statement            gui=bold guifg=cyan
    hi Conditional      gui=bold guifg=cyan
    hi Repeat           gui=bold guifg=cyan
    hi Label            guifg=cyan
    hi Operator         guifg=cyan
    "hi Keyword
    "hi Exception

hi PreProc              guifg=lightsteelblue
    hi Include          gui=bold guifg=lightsteelblue
    hi Define           guifg=lightsteelblue
    hi Macro            guifg=lightsteelblue
    hi PreCondit        guifg=lightsteelblue

hi Type                 gui=bold guifg=palegreen
    hi StorageClass     gui=bold guifg=lightgoldenrod1
    hi Structure        gui=bold guifg=lightgoldenrod1
    hi Typedef          gui=bold guifg=lightgoldenrod1

"hi Special
    ""Underline Character
    "hi SpecialChar
    "hi Tag
    ""Statement
    "hi Delimiter
    ""Bold comment (in Java at least)
    "hi SpecialComment
    "hi Debug

hi Underlined           gui=underline

hi Ignore               guifg=bg

hi Error                gui=bold guifg=White guibg=Red

"hi Todo
" Vim color file
" desertedocean v0.5
" Maintainer:   Shawn Axsom <axs221@gmail.com>
"               [axs221.1l.com]

" desertedocean, a colorscheme using the desert colorscheme as a template, based loosely off of desert, oceandeep, and zenburn.
"
" With thanks to Panos Laganakos

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name="desertedocean"

hi Normal   guifg=#FFE0FA guibg=#122130

" syntax highlighting
hi Comment    guifg=#6Aa0e0
hi Title    guifg=#00aBdF
hi Underlined guifg=#20b0eF gui=none
hi Statement  guifg=#eF7a7a
hi Type       guifg=#dAa0b0
hi PreProc    guifg=#FF7A9a 
hi Constant   guifg=#EE8aB5 " or #FF707A 
hi Identifier guifg=#FFe0bd 
hi Special    guifg=#8cf0ff
hi Ignore   guifg=grey40
hi Todo     guifg=orangered guibg=yellow2
"hi Error
"end syntax highlighting

" highlight groups
hi Cursor   guibg=#007799 guifg=#00D0D0
"hi CursorIM
hi Directory guifg=#bbd0df
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
hi VertSplit    guibg=#c2bfa5 guifg=grey50 gui=none
hi Folded   guibg=#337799 guifg=#BBDDCC
hi FoldColumn   guibg=#337799 guifg=#00CCFF
hi LineNr   guifg=#CCF0FF guibg=#006688 
hi ModeMsg  guifg=#00AACC
hi MoreMsg  guifg=SeaGreen
hi NonText  guifg=#285960 guibg=#2A374A
hi Question guifg=#AABBCC
hi Search   guibg=slategrey guifg=#FFDABB
hi IncSearch    guifg=slategrey guibg=#FFDFB0
hi SpecialKey   guifg=#00CCBB " blue green
hi StatusLine   guibg=#00A5EA guifg=#050709 gui=none
hi StatusLineNC guibg=#1079B0 guifg=#272334 gui=none
hi Visual   guifg=#008FBF guibg=#33DFEF
"hi VisualNOS
hi WarningMsg   guifg=salmon
"hi WildMenu
"hi Menu
"hi Scrollbar  guibg=grey30 guifg=tan
"hi Tooltip

hi Pmenu    guifg=#6Aa0e0 guibg=#222f3d
hi PmenuSel guifg=#FFFFFF guibg=#0088bb 

" color terminal definitions
hi SpecialKey   ctermfg=darkgreen
hi NonText  cterm=bold ctermfg=darkblue
hi Directory    ctermfg=darkcyan
hi ErrorMsg cterm=bold ctermfg=7 ctermbg=1
hi IncSearch    cterm=NONE ctermfg=yellow ctermbg=green
hi Search   cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg  ctermfg=darkgreen
hi ModeMsg  cterm=NONE ctermfg=brown
hi LineNr   ctermfg=3
hi Question ctermfg=green
hi StatusLine   cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit    cterm=reverse
hi Title    ctermfg=5
hi Visual   cterm=reverse
hi VisualNOS    cterm=bold,underline
hi WarningMsg   ctermfg=1
hi WildMenu ctermfg=0 ctermbg=3
hi Folded   ctermfg=darkgrey ctermbg=NONE
hi FoldColumn   ctermfg=darkgrey ctermbg=NONE
hi DiffAdd  ctermbg=4
hi DiffChange   ctermbg=5
hi DiffDelete   cterm=bold ctermfg=4 ctermbg=6
hi DiffText cterm=bold ctermbg=1
hi Comment  ctermfg=darkcyan
hi Constant ctermfg=brown
hi Special  ctermfg=5
hi Identifier   ctermfg=6
hi Statement    ctermfg=3
hi PreProc  ctermfg=5
hi Type     ctermfg=2
hi Underlined   cterm=underline ctermfg=5
hi Ignore   cterm=bold ctermfg=7
hi Ignore   ctermfg=darkgrey
hi Error    cterm=bold ctermfg=7 ctermbg=1


"vim: sw=4
" Vim color file
" Maintainer:   Ajit J. Thakkar (ajit AT unb DOT ca)
" Last Change:  2005 Nov. 21
" Version:  1.1
" URL:      http://www.unb.ca/chem/ajit/vim.htm

" This GUI-only color scheme has a blue-black background

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "dusk"

hi Normal   guifg=ivory guibg=#1f3048

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg gui=NONE guifg=Red guibg=Linen
hi IncSearch    gui=NONE guibg=LightGreen guifg=Black
hi ModeMsg  gui=NONE guifg=fg guibg=bg
hi StatusLine   gui=NONE guifg=DarkBlue guibg=Grey
hi StatusLineNC gui=NONE guifg=Grey50 guibg=Grey
hi VertSplit    gui=NONE guifg=Grey guibg=Grey
hi Visual   gui=reverse guifg=fg guibg=LightSkyBlue4
hi VisualNOS    gui=underline guifg=fg guibg=bg
hi DiffText gui=NONE guifg=Yellow guibg=LightSkyBlue4
hi Cursor   guibg=Green guifg=Black
hi lCursor  guibg=Cyan guifg=Black
hi Directory    guifg=LightGreen guibg=bg
hi LineNr   guifg=MistyRose3 guibg=bg
hi MoreMsg  gui=NONE guifg=SeaGreen guibg=bg
hi NonText  gui=NONE guifg=Cyan4 guibg=#102848
hi Question gui=NONE guifg=LimeGreen guibg=bg
hi Search   gui=NONE guifg=SkyBlue4 guibg=Bisque
hi SpecialKey   guifg=Cyan guibg=bg
hi Title    gui=NONE guifg=Yellow2 guibg=bg
hi WarningMsg   guifg=Tomato3 guibg=Linen
hi WildMenu gui=NONE guifg=SkyBlue4 guibg=Bisque
"hi Folded  guifg=MistyRose2 guibg=bg
hi Folded   guifg=MistyRose2 guibg=#102848
hi FoldColumn   guifg=DarkBlue guibg=Grey
hi DiffAdd  gui=NONE guifg=Blue guibg=LightCyan
hi DiffChange   gui=NONE guifg=white guibg=LightCyan4
hi DiffDelete   gui=NONE guifg=LightBlue guibg=LightCyan

" Colors for syntax highlighting
hi Constant gui=NONE guifg=MistyRose3 guibg=bg
hi String   gui=NONE guifg=LightBlue3 guibg=bg
hi Special  gui=NONE guifg=GoldenRod guibg=bg
hi Statement    gui=NONE guifg=khaki guibg=bg
"hi Statement   gui=NONE guifg=#d7cd7b guibg=bg
hi Operator gui=NONE guifg=Chartreuse guibg=bg
hi Ignore   gui=NONE guifg=bg guibg=bg
if v:version >= 700
  hi SpellBad   gui=undercurl guisp=Red guifg=fg guibg=bg
  hi SpellCap   gui=undercurl guisp=GoldenRod guifg=fg guibg=bg
  hi SpellRare  gui=undercurl guisp=Ivory guifg=fg guibg=bg
  hi SpellLocal gui=undercurl guisp=SeaGreen guifg=fg guibg=bg
endif
hi ToDo     gui=NONE guifg=DodgerBlue guibg=bg
hi Error    gui=NONE guifg=Red guibg=Linen
hi Comment  gui=NONE guifg=SlateGrey guibg=bg
"hi Comment gui=NONE guifg=Lavender guibg=bg
hi Identifier   gui=NONE guifg=BlanchedAlmond guibg=bg
hi PreProc  gui=NONE guifg=#ffa0a0 guibg=bg
hi Type     gui=NONE guifg=NavajoWhite guibg=bg
hi Underlined   gui=underline guifg=fg guibg=bg

" vim: sw=2
" GUI-only vim color file
" Author:      Christian MICHON
" Version:     1.0
" Last Change: 10 Oct 2002

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "lilac"

hi Boolean        guifg=#00f080 guibg=#503040 gui=none
hi Character      guifg=#00f080 guibg=#503040 gui=none
hi Comment        guifg=#c0c0c0 guibg=#503040 gui=underline
hi Conditional    guifg=#60d0d0 guibg=#503040 gui=bold
hi Constant       guifg=#00f080 guibg=#503040 gui=none
hi Cursor         guifg=#000000 guibg=#f0f000 gui=none
hi Debug          guifg=#b0d0f0 guibg=#503040 gui=none
hi Define         guifg=#f0f000 guibg=#503040 gui=none
hi Delimiter      guifg=#b0d0f0 guibg=#503040 gui=none
hi DiffAdd        guifg=#f0f000 guibg=#805070 gui=bold
hi DiffChange     guifg=#f0f0f0 guibg=#805070 gui=none
hi DiffDelete     guifg=#503040 guibg=#805070 gui=none
hi DiffText       guifg=#000000 guibg=#f0f000 gui=bold
hi Directory      guifg=#f0f000 guibg=#503040 gui=underline
hi Error          guifg=#000000 guibg=#b0d0f0 gui=bold
hi ErrorMsg       guifg=#000000 guibg=#b0d0f0 gui=bold
hi Exception      guifg=#60d0d0 guibg=#503040 gui=bold
hi Float          guifg=#00f080 guibg=#503040 gui=none
hi FoldColumn     guifg=#b0d0f0 guibg=#805070 gui=bold
hi Folded         guifg=#b0d0f0 guibg=#805070 gui=bold
hi Function       guifg=#f0a070 guibg=#503040 gui=none
hi Identifier     guifg=#f0a070 guibg=#503040 gui=none
hi Ignore         guifg=#503040 guibg=#503040 gui=none
hi Include        guifg=#f0f000 guibg=#503040 gui=none
hi IncSearch      guifg=#000000 guibg=#b0d0f0 gui=bold
hi Keyword        guifg=#60d0d0 guibg=#503040 gui=bold
hi Label          guifg=#60d0d0 guibg=#503040 gui=bold
hi lCursor        guifg=#f0f0f0 guibg=#503040 gui=none
hi LineNr         guifg=#c0c0c0 guibg=#805070 gui=bold
hi Macro          guifg=#f0f000 guibg=#503040 gui=none
hi ModeMsg        guifg=#f0f0f0 guibg=#503040 gui=bold
hi MoreMsg        guifg=#f070a0 guibg=#503040 gui=bold
hi NonText        guifg=#c0c0c0 guibg=#503040 gui=bold
hi Normal         guifg=#f0f0f0 guibg=#503040 gui=none
hi Number         guifg=#00f080 guibg=#503040 gui=none
hi Operator       guifg=#60d0d0 guibg=#503040 gui=bold
hi PreCondit      guifg=#f0f000 guibg=#503040 gui=none
hi PreProc        guifg=#f0f000 guibg=#503040 gui=none
hi Question       guifg=#f070a0 guibg=#503040 gui=bold
hi Repeat         guifg=#60d0d0 guibg=#503040 gui=bold
hi Search         guifg=#000000 guibg=#b0d0f0 gui=bold
hi Special        guifg=#b0d0f0 guibg=#503040 gui=none
hi SpecialChar    guifg=#b0d0f0 guibg=#503040 gui=none
hi SpecialComment guifg=#b0d0f0 guibg=#503040 gui=none
hi SpecialKey     guifg=#f0f000 guibg=#503040 gui=none
hi Statement      guifg=#60d0d0 guibg=#503040 gui=bold
hi StatusLine     guifg=#000000 guibg=#f0f0f0 gui=bold
hi StatusLineNC   guifg=#c0c0c0 guibg=#805070 gui=bold
hi StorageClass   guifg=#f070a0 guibg=#503040 gui=bold
hi String         guifg=#00f080 guibg=#503040 gui=none
hi Structure      guifg=#f070a0 guibg=#503040 gui=bold
hi Tag            guifg=#b0d0f0 guibg=#503040 gui=none
hi Title          guifg=#00f080 guibg=#503040 gui=bold
hi Todo           guifg=#f0f000 guibg=#0000f0 gui=none
hi Type           guifg=#f070a0 guibg=#503040 gui=bold
hi Typedef        guifg=#f070a0 guibg=#503040 gui=bold
hi Underlined     guifg=#b0d0f0 guibg=#503040 gui=underline
hi VertSplit      guifg=#000000 guibg=#b0d0f0 gui=bold
hi Visual         guifg=#000000 guibg=#b0d0f0 gui=underline
hi VisualNOS      guifg=#f0f0f0 guibg=#503040 gui=underline
hi WarningMsg     guifg=#000000 guibg=#b0d0f0 gui=bold
hi WildMenu       guifg=#f0f0f0 guibg=#0000f0 gui=none
" Vim color file
" Maintainer:   Zhang Jing
" Last Change:  %[% 2005年12月07日 星期三 10时41分49秒 %]%

set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
    syntax reset
    endif
endif
let g:colors_name="softblue"

hi Normal       guibg=#183058   guifg=#b0b0e0

hi Cursor       guibg=#b3b2df   guifg=grey30    gui=bold
hi VertSplit    guibg=#466292   guifg=grey50    gui=none
hi Folded       guibg=#0d2349   guifg=lightblue
hi FoldColumn   guibg=#0d2349   guifg=lightblue
hi IncSearch    guifg=slategrey guibg=khaki
hi LineNr       guifg=grey30
hi ModeMsg      guifg=SkyBlue
hi MoreMsg      guifg=SeaGreen
hi NonText      guifg=LightBlue guibg=#0d2349
hi Question     guifg=#487cc4
hi Search       guibg=#787878   guifg=wheat
hi SpecialKey   guifg=yellowgreen
hi StatusLine   guibg=#466292   guifg=black     gui=none
hi StatusLineNC guibg=#466292   guifg=grey22    gui=none
hi Title        guifg=#38d9ff
hi Visual       guifg=lightblue guibg=#001146   gui=none
hi WarningMsg   guifg=salmon
hi ErrorMsg     guifg=white     guibg=#b2377a

hi Comment      guifg=#6279a0
hi Constant     guifg=#9b60be
hi Identifier   guifg=#00ac55
hi Statement    guifg=SkyBlue2
hi PreProc      guifg=#20a0d0
hi Type         guifg=#8070ff
hi Special      guifg=#b6a040"wheat4"#7c9cf5"a2b9e0
hi Ignore       guifg=grey40
hi Error        guifg=white     guibg=#b2377a
hi Todo         guifg=#54b900   guibg=#622098   gui=bold
"vim:ts=4:tw=4
