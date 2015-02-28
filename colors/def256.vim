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

let colors_name = "def256"
	" -> Text; Miscellaneous
hi Normal         ctermbg=None  ctermfg=256 cterm=none
hi SpecialKey     ctermbg=None  ctermfg=70  cterm=none
hi VertSplit      ctermbg=None  ctermfg=0   cterm=none
hi SignColumn     ctermbg=None  ctermfg=141 cterm=none
hi NonText        ctermbg=None  ctermfg=105 cterm=none
hi Directory      ctermbg=None  ctermfg=57  cterm=none 
hi Title          ctermbg=None  ctermfg=84  cterm=bold

	" -> Cursor 
	hi Cursor         ctermbg=None     ctermfg=57  cterm=none
	hi CursorIM       ctermbg=None     ctermfg=58  cterm=none
	hi CursorLine     ctermbg=None     ctermfg=none  cterm=none
    hi CursorLineNr	  ctermfg=178   ctermbg=0   cterm=None
	hi CursorColumn   ctermbg=None     ctermfg=none  cterm=none

hi Comment      ctermbg=none    ctermfg=240         cterm=none
hi Constant	    ctermfg=76      ctermbg=None        cterm=Bold
hi Number       ctermfg=160     ctermbg=None        cterm=Bold
hi String       ctermfg=110                         cterm=Bold
hi Todo         ctermfg=162     ctermbg=None        cterm=Bold
hi Identifier	ctermfg=142     ctermbg=None        cterm=Bold
hi Error	    ctermfg=None    ctermbg=196         cterm=Bold
hi Special	    ctermfg=172     ctermbg=None        cterm=Bold
hi Ignore       ctermfg=221     ctermbg=None        cterm=Bold
hi Underline    ctermfg=147     ctermbg=248        cterm=Bold

	" - Statement 
hi Statement    ctermbg=None  ctermfg=166   cterm=Bold
hi Conditional    ctermbg=None  ctermfg=166   cterm=Bold
hi Repeat    ctermbg=None  ctermfg=166   cterm=Bold
hi Label    ctermbg=None  ctermfg=166   cterm=Bold
hi Operator    ctermbg=None  ctermfg=166   cterm=Bold
hi Keyword    ctermbg=None  ctermfg=166   cterm=Bold
hi Exception    ctermbg=None  ctermfg=166   cterm=Bold

" - PreProc 
	hi PreProc        ctermbg=None  ctermfg=99    cterm=Bold
	hi Include        ctermbg=None  ctermfg=135   cterm=Bold
	hi Define         ctermbg=None  ctermfg=134   cterm=Bold
	hi Macro          ctermbg=None  ctermfg=133   cterm=Bold
	hi PreCondit      ctermbg=None  ctermfg=132   cterm=Bold

" - Type 
hi Type           ctermbg=None  ctermfg=130   cterm=Bold
hi MatchParen     ctermbg=214  ctermfg=196   cterm=Bold

	" -> Folding
	hi FoldColumn     ctermbg=4   ctermfg=18  cterm=none
	hi Folded         ctermbg=4   ctermfg=18  cterm=Bold

" -> Line info  
hi LineNr         ctermbg=74     ctermfg=18  cterm=None
hi StatusLine     ctermbg=0     ctermfg=39  cterm=none
hi StatusLineNC   ctermbg=74   ctermfg=248 cterm=none


	" -> Visual Mode
	hi Visual         ctermbg=252    ctermfg=None   cterm=none 
	hi VisualNOS      ctermbg=252    ctermfg=None   cterm=none

" -> Search 
hi Search         ctermbg=None   ctermfg=200 cterm=Bold 
hi IncSearch      ctermbg=None   ctermfg=200 cterm=Bold

	" -> Tabs
	hi TabLine        ctermbg=74  ctermfg=18    cterm=none
	hi TabLineFill    ctermbg=74    ctermfg=15  cterm=none
	hi TabLineSel     ctermbg=74  ctermfg=18    cterm=bold 
    hi ColorColumn    ctermbg=255  ctermfg=None  cterm=none


" vim: sw=2
