" Vim color file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2001 Jul 23

" This is the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "cs256"
    	" -> Text; Miscellaneous
    hi Normal         ctermbg=253  ctermfg=0 cterm=none
    hi SpecialKey     ctermbg=253  ctermfg=70  cterm=none
    hi VertSplit      ctermbg=253  ctermfg=0   cterm=none
    hi SignColumn     ctermbg=253  ctermfg=141 cterm=none
    hi NonText        ctermbg=250  ctermfg=105 cterm=none
    hi Directory      ctermbg=253  ctermfg=57  cterm=none 
    hi Title          ctermbg=25  ctermfg=84  cterm=bold

" -> Cursor 
hi Cursor         ctermbg=23     ctermfg=57  cterm=Bold
hi CursorIM       ctermbg=23     ctermfg=58  cterm=none
hi CursorLine     ctermbg=153     ctermfg=none  cterm=none
hi CursorLineNr	  ctermbg=24    ctermfg=45      cterm=None
hi CursorColumn   ctermbg=153   ctermfg=none  cterm=none

    hi Comment      ctermbg=none    ctermfg=240         cterm=none
    hi Constant	    ctermfg=27      ctermbg=None        cterm=Bold
    hi Number       ctermfg=18     ctermbg=None        cterm=Bold
    hi String       ctermfg=36                         cterm=Bold
    hi Todo         ctermfg=53     ctermbg=None        cterm=Bold
    hi Identifier	ctermfg=142     ctermbg=None        cterm=Bold
    hi Error	    ctermfg=None    ctermbg=196         cterm=Bold
    hi Special	    ctermfg=99     ctermbg=None        cterm=Bold
    hi Ignore       ctermfg=221     ctermbg=None        cterm=Bold
    hi Underline    ctermfg=147     ctermbg=248        cterm=Bold

	" - Statement 
hi Statement    ctermbg=253  ctermfg=23   cterm=Bold
hi Conditional  ctermbg=253  ctermfg=23   cterm=Bold
hi Repeat       ctermbg=253  ctermfg=23   cterm=Bold
hi Label        ctermbg=253  ctermfg=23   cterm=Bold
hi Operator     ctermbg=253  ctermfg=23   cterm=Bold
hi Keyword      ctermbg=253  ctermfg=23   cterm=Bold
hi Exception    ctermbg=253  ctermfg=23   cterm=Bold

" - PreProc 
	hi PreProc        ctermbg=253  ctermfg=6    cterm=Bold
	hi Include        ctermbg=253  ctermfg=30   cterm=Bold
	hi Define         ctermbg=253  ctermfg=134   cterm=Bold
	hi Macro          ctermbg=253  ctermfg=133   cterm=Bold
	hi PreCondit      ctermbg=253  ctermfg=132   cterm=Bold

" - Type 
hi Type           ctermbg=253  ctermfg=29   cterm=Bold
hi MatchParen     ctermbg=23  ctermfg=50   cterm=Bold

	" -> Folding
	hi FoldColumn     ctermbg=4   ctermfg=18  cterm=none
	hi Folded         ctermbg=4   ctermfg=18  cterm=Bold

" -> Line info  
hi LineNr         ctermbg=74     ctermfg=18  cterm=None
hi StatusLine     ctermbg=23     ctermfg=39  cterm=Bold
hi StatusLineNC   ctermbg=74   ctermfg=248 cterm=none


	" -> Visual Mode
	hi Visual         ctermbg=117    ctermfg=None   cterm=none 
	hi VisualNOS      ctermbg=117    ctermfg=None   cterm=none

" -> Search 
hi Search         ctermbg=None   ctermfg=125 cterm=Bold 
hi IncSearch      ctermbg=None   ctermfg=125 cterm=Bold

	" -> Tabs
	hi TabLine        ctermbg=74  ctermfg=18    cterm=none
	hi TabLineFill    ctermbg=74  ctermfg=15  cterm=none
	hi TabLineSel     ctermbg=24  ctermfg=18    cterm=bold 
    hi ColorColumn    ctermbg=250 ctermfg=None  cterm=none

" -> Menu
hi Pmenu          ctermbg=37     ctermfg=23  cterm=none
hi PmenuSel       ctermbg=23   ctermfg=253  cterm=Bold
hi PmenuSbar      ctermbg=37                cterm=none
hi PmenuThumb     ctermbg=37                cterm=none




" vim: sw=2
