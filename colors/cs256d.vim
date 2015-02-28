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

let colors_name = "cs256d"
    	" -> Text; Miscellaneous
    hi Normal         ctermbg=234  ctermfg=145 cterm=none
    hi SpecialKey     ctermbg=234  ctermfg=70  cterm=none
    hi VertSplit      ctermbg=23  ctermfg=23   cterm=none
    hi SignColumn     ctermbg=234  ctermfg=141 cterm=none
    hi NonText        ctermbg=233  ctermfg=105 cterm=none
    hi Directory      ctermbg=234  ctermfg=57  cterm=none 
    hi Title          ctermbg=25  ctermfg=84  cterm=bold

" -> Cursor 
hi Cursor         ctermbg=232     ctermfg=57  cterm=Bold
hi CursorIM       ctermbg=232     ctermfg=58  cterm=none
hi CursorLine     ctermbg=0     ctermfg=none  cterm=none
hi CursorLineNr	  ctermbg=23    ctermfg=45      cterm=Bold
hi CursorColumn   ctermbg=232   ctermfg=none  cterm=none

    hi Comment      ctermbg=none   ctermfg=240       cterm=none
    hi Constant	    ctermbg=234   ctermfg=76        cterm=Bold
    hi Number       ctermbg=234   ctermfg=124        cterm=Bold
    hi String       ctermbg=234   ctermfg=24        cterm=Bold
    hi Todo         ctermbg=234   ctermfg=203        cterm=Bold
    hi Identifier	ctermbg=234   ctermfg=142       cterm=Bold
    hi Error	    ctermbg=196    ctermfg=None      cterm=Bold
    hi Special	    ctermbg=234   ctermfg=99        cterm=Bold
    hi Ignore       ctermbg=234   ctermfg=221       cterm=Bold
    hi Underline    ctermbg=248    ctermfg=147       cterm=Bold

	" - Statement 
hi Statement    ctermbg=234  ctermfg=23   cterm=Bold
hi Conditional  ctermbg=234  ctermfg=23   cterm=Bold
hi Repeat       ctermbg=234  ctermfg=23   cterm=Bold
hi Label        ctermbg=234  ctermfg=23   cterm=Bold
hi Operator     ctermbg=234  ctermfg=23   cterm=Bold
hi Keyword      ctermbg=234  ctermfg=23   cterm=Bold
hi Exception    ctermbg=234  ctermfg=23   cterm=Bold

" - PreProc 
	hi PreProc        ctermbg=234  ctermfg=6    cterm=Bold
	hi Include        ctermbg=234  ctermfg=30   cterm=Bold
	hi Define         ctermbg=234  ctermfg=134   cterm=Bold
	hi Macro          ctermbg=234  ctermfg=133   cterm=Bold
	hi PreCondit      ctermbg=234  ctermfg=132   cterm=Bold

" - Type 
hi Type           ctermbg=234  ctermfg=29   cterm=Bold
hi MatchParen     ctermbg=23  ctermfg=50   cterm=Bold

	" -> Folding
	hi FoldColumn     ctermbg=None   ctermfg=18  cterm=none
	hi Folded         ctermbg=4   ctermfg=18  cterm=Bold

" -> Line info  
hi LineNr         ctermbg=232     ctermfg=23  cterm=None
hi StatusLine     ctermbg=232     ctermfg=39  cterm=Bold
hi StatusLineNC   ctermbg=232   ctermfg=248 cterm=none


	" -> Visual Mode
	hi Visual         ctermbg=117    ctermfg=None   cterm=none 
	hi VisualNOS      ctermbg=117    ctermfg=None   cterm=none

" -> Search 
hi Search         ctermbg=None   ctermfg=125 cterm=Bold 
hi IncSearch      ctermbg=None   ctermfg=125 cterm=Bold

	" -> Tabs
	hi TabLine        ctermbg=74  ctermfg=18    cterm=none
	hi TabLineFill    ctermbg=74  ctermfg=15  cterm=none
	hi TabLineSel     ctermbg=1  ctermfg=18    cterm=bold 
    hi ColorColumn    ctermbg=233 ctermfg=None  cterm=none

" -> Menu
hi Pmenu          ctermbg=37     ctermfg=23  cterm=none
hi PmenuSel       ctermbg=23   ctermfg=234  cterm=Bold
hi PmenuSbar      ctermbg=37                cterm=none
hi PmenuThumb     ctermbg=37                cterm=none




" vim: sw=2
