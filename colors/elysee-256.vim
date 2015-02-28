" Vim color file
" Maintainer:	Piotr Husiatyński <phusiatynski@gmail.com>

set background=dark
set t_Co=256
let g:colors_name="elysee-256"

let python_highlight_all = 1
let c_gnu = 1


hi Normal	    ctermfg=145         ctermbg=233         cterm=None
hi Cursor       ctermfg=253         ctermbg=57          cterm=None
hi CursorLine   ctermfg=None        ctermbg=Black       cterm=None
hi SpecialKey	ctermfg=70          ctermbg=None        cterm=None
hi Directory	ctermfg=57          ctermbg=254         cterm=None
hi ErrorMsg     ctermfg=160         ctermbg=245         cterm=None
hi PreProc	    ctermfg=darkblue    ctermbg=None        cterm=Bold
hi Search	    ctermfg=125         ctermbg=None        cterm=Bold
hi Type		    ctermfg=166         ctermbg=None        cterm=Bold
hi Statement	ctermfg=172         ctermbg=None        cterm=Bold
hi Comment	    ctermfg=240         ctermbg=233         cterm=None
hi LineNr	    ctermfg=23         ctermbg=0           cterm=None
hi CursorLineNr	ctermfg=178         ctermbg=0           cterm=None
hi NonText	    ctermfg=105         ctermbg=None        cterm=Bold

hi DiffText	    ctermfg=11          ctermbg=235         cterm=None
hi DiffAdd	    ctermfg=2           ctermbg=235         cterm=None
hi DiffChange	ctermfg=50          ctermbg=235         cterm=None
hi DiffDelete	ctermfg=1           ctermbg=235         cterm=None

hi Constant	    ctermfg=76          ctermbg=None        cterm=Bold
hi Number       ctermfg=darkred     ctermbg=None        cterm=Bold
hi String       ctermfg=darkblue                        "cterm=Bold
hi Todo         ctermfg=162         ctermbg=None        cterm=Bold
hi Identifier	ctermfg=142         ctermbg=None        cterm=Bold
hi Error	    ctermfg=None        ctermbg=196         cterm=Bold
hi Special	    ctermfg=190         ctermbg=None        cterm=Bold
hi Ignore       ctermfg=221         ctermbg=None        cterm=Bold
hi Underline    ctermfg=147         ctermbg=None        cterm=Italic

hi FoldColumn	ctermfg=132         ctermbg=None        cterm=None
hi Folded       ctermfg=132         ctermbg=None        cterm=Bold

hi Visual       ctermfg=248         ctermbg=238         cterm=None

hi Pmenu        ctermfg=23          ctermbg=0         cterm=None
hi PmenuSel     ctermfg=30          ctermbg=232         cterm=Bold
"hi PmenuSbar    ctermfg=247         ctermbg=232         cterm=Bold
"hi PmenuThumb   ctermfg=248         ctermbg=232         cterm=None
hi PmenuSbar    ctermfg=1         ctermbg=232         cterm=Bold
hi PmenuThumb   ctermfg=154         ctermbg=232         cterm=None

hi StatusLineNC ctermfg=248         ctermbg=232         cterm=None
hi StatusLine   ctermfg=39          ctermbg=0         cterm=None
hi VertSplit    ctermfg=0         ctermbg=0         cterm=None

hi TabLine      ctermfg=6           ctermbg=233         cterm=None
hi TabLineFill  ctermfg=232         ctermbg=233         cterm=none
hi TabLineSel   ctermfg=6           ctermbg=233         cterm=Bold
hi ColorColumn  ctermbg=232         guibg=red          cterm=none
"hi OverLength   ctermbg=red 
