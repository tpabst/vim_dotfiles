" Vim color file
" Name:       herald.vim
" Author:     Fabio Cevasco <h3rald@h3rald.com>
" Version:    0.2.0
" Notes:      Supports 8, 16, 256 and 16,777,216 (RGB) color modes

hi clear

"if exists("syntax_on")
"	syntax reset
"endif

let colors_name = "cs-256"

set background=dark

" Set some syntax-related variables
"let ruby_operators = 1

if has("gui_running")

	" -> Text; Miscellaneous
	hi Normal         guibg=#1F1F1F guifg=#D0D0D0 gui=none
	hi SpecialKey     guibg=#1F1F1F guifg=#E783E9 gui=none
	hi VertSplit      guibg=#1F1F1F guifg=#FFEE68 gui=none
	hi SignColumn     guibg=#1F1F1F guifg=#BF81FA gui=none
	hi NonText        guibg=#1F1F1F guifg=#FC6984 gui=none
	hi Directory      guibg=#1F1F1F guifg=#FFEE68 gui=none 
	hi Title          guibg=#1F1F1F guifg=#6DF584 gui=bold

	" -> Cursor 
	hi Cursor         guibg=#FFEE68 guifg=#1F1F1F gui=none
	hi CursorIM       guibg=#FFEE68 guifg=#1F1F1F gui=none
	hi CursorColumn   guibg=#000000               gui=none
	hi CursorLine     guibg=#000000               gui=none

	" -> Folding
	hi FoldColumn     guibg=#001336 guifg=#003DAD gui=none
	hi Folded         guibg=#001336 guifg=#003DAD gui=none

	" -> Line info  
	hi LineNr         guibg=#000000 guifg=#696567 gui=none
	hi StatusLine     guibg=#000000 guifg=#696567 gui=none
	hi StatusLineNC   guibg=#25365a guifg=#696567 gui=none

	" -> Messages
	hi ErrorMsg       guibg=#A32024 guifg=#D0D0D0 gui=none
	hi Question       guibg=#1F1F1F guifg=#FFA500 gui=none
	hi WarningMsg     guibg=#FFA500 guifg=#000000 gui=none
	hi MoreMsg        guibg=#1F1F1F guifg=#FFA500 gui=none
	hi ModeMsg        guibg=#1F1F1F guifg=#FFA500 gui=none

	" -> Search 
	hi Search         guibg=#FF9E16               gui=none 
	hi IncSearch      guibg=#FF9E16               gui=none

	" -> Diff
	hi DiffAdd        guibg=#006124 guifg=#ED9000 gui=none
	hi DiffChange     guibg=#0B294A guifg=#A36000 gui=none
	hi DiffDelete     guibg=#081F38 guifg=#ED9000 gui=none
	hi DiffText       guibg=#12457D guifg=#ED9000 gui=underline

	" -> Menu
	hi Pmenu          guibg=#140100 guifg=#660300 gui=none
	hi PmenuSel       guibg=#F17A00 guifg=#4C0200 gui=none
	hi PmenuSbar      guibg=#430300               gui=none
	hi PmenuThumb     guibg=#720300               gui=none
	hi PmenuSel       guibg=#F17A00 guifg=#4C0200 gui=none

	" -> Tabs
	hi TabLine        guibg=#141414 guifg=#1F1F1F gui=none
	hi TabLineFill    guibg=#000000               gui=none
	hi TabLineSel     guibg=#1F1F1F guifg=#D0D0D0 gui=bold  
	"
	" -> Visual Mode
	hi Visual         guibg=#000000 guifg=#FFB539 gui=none
	hi VisualNOS      guibg=#000000 guifg=#696567 gui=none

	" -> Code
	hi Comment        guibg=#1F1F1F guifg=#696567 gui=none
	hi Constant       guibg=#1F1F1F guifg=#6DF584 gui=none
	hi String         guibg=#1F1F1F guifg=#FFB539 gui=none
	hi Error          guibg=#1F1F1F guifg=#FC4234 gui=none
	hi Identifier     guibg=#1F1F1F guifg=#70BDF1 gui=none
	hi Function       guibg=#1F1F1F guifg=#90CBF1 gui=none
	hi Ignore         guibg=#1F1F1F guifg=#1F1F1F gui=none
	hi MatchParen     guibg=#FFA500 guifg=#1F1F1F gui=none
	hi PreProc        guibg=#1F1F1F guifg=#BF81FA gui=none
	hi Special        guibg=#1F1F1F guifg=#FFB539 gui=none
	hi Todo           guibg=#1F1F1F guifg=#FC4234 gui=bold
	hi Underlined     guibg=#1F1F1F guifg=#FC4234 gui=underline
	hi Statement      guibg=#1F1F1F guifg=#E783E9 gui=none
	hi Operator       guibg=#1F1F1F guifg=#FC6984 gui=none
	hi Delimiter      guibg=#1F1F1F guifg=#FFEC48 gui=none
	hi Type           guibg=#1F1F1F guifg=#FFEE68 gui=none
	hi Exception      guibg=#1F1F1F guifg=#FC4234 gui=none

	" -> HTML-specific
	hi htmlBold                 guibg=#1F1F1F guifg=#D0D0D0 gui=bold
	hi htmlBoldItalic           guibg=#1F1F1F guifg=#D0D0D0 gui=bold,italic
	hi htmlBoldUnderline        guibg=#1F1F1F guifg=#D0D0D0 gui=bold,underline
	hi htmlBoldUnderlineItalic  guibg=#1F1F1F guifg=#D0D0D0 gui=bold,underline,italic
	hi htmlItalic               guibg=#1F1F1F guifg=#D0D0D0 gui=italic
	hi htmlUnderline            guibg=#1F1F1F guifg=#D0D0D0 gui=underline
	hi htmlUnderlineItalic      guibg=#1F1F1F guifg=#D0D0D0 gui=underline,italic

elseif &t_Co == 256

	" -> Text; Miscellaneous
	hi Normal         ctermbg=234   ctermfg=145 cterm=none
	hi SpecialKey     ctermbg=None  ctermfg=70  cterm=none
	hi VertSplit      ctermbg=0     ctermfg=0   cterm=none
	hi SignColumn     ctermbg=234   ctermfg=141 cterm=none
	hi NonText        ctermbg=234   ctermfg=105 cterm=none
	hi Directory      ctermbg=234   ctermfg=57  cterm=none 
	hi Title          ctermbg=234   ctermfg=84  cterm=bold

	" -> Cursor 
	hi Cursor         ctermbg=232     ctermfg=57  cterm=none
	hi CursorIM       ctermbg=232     ctermfg=58  cterm=none
	hi CursorLine     ctermbg=232     ctermfg=none  cterm=none
    hi CursorLineNr	  ctermfg=178   ctermbg=0   cterm=None
	hi CursorColumn   ctermbg=232     ctermfg=none  cterm=none

	" -> Folding
	hi FoldColumn     ctermbg=234   ctermfg=25  cterm=none
	hi Folded         ctermbg=234   ctermfg=25  cterm=Bold

	" -> Line info  
	hi LineNr         ctermbg=232     ctermfg=23  cterm=none
	hi StatusLine     ctermbg=0     ctermfg=39  cterm=none
	hi StatusLineNC   ctermbg=232   ctermfg=248 cterm=none

	" -> Messages
	hi ErrorMsg       ctermbg=124   ctermfg=252 cterm=none
	hi Question       ctermbg=234   ctermfg=214 cterm=none
	hi WarningMsg     ctermbg=214   ctermfg=0   cterm=none
	hi MoreMsg        ctermbg=234   ctermfg=214 cterm=none
	hi ModeMsg        ctermbg=234   ctermfg=214 cterm=none

	" -> Search 
	hi Search         ctermbg=234   ctermfg=125 cterm=Bold 
	hi IncSearch      ctermbg=234   ctermfg=125 cterm=Bold

	" -> Diff
	hi DiffAdd        ctermbg=22    ctermfg=208 cterm=none
	hi DiffChange     ctermbg=235   ctermfg=130 cterm=none
	hi DiffDelete     ctermbg=234   ctermfg=208 cterm=none
	hi DiffText       ctermbg=24    ctermfg=208 cterm=underline

	" -> Menu
	hi Pmenu          ctermbg=0     ctermfg=23  cterm=none
	hi PmenuSel       ctermbg=234   ctermfg=30  cterm=Bold
	hi PmenuSbar      ctermbg=23                cterm=none
	hi PmenuThumb     ctermbg=23                cterm=none

	" -> Tabs
	hi TabLine        ctermbg=234  ctermfg=6    cterm=none
	hi TabLineFill    ctermbg=0    ctermfg=232  cterm=none
	hi TabLineSel     ctermbg=234  ctermfg=6    cterm=bold 
    hi ColorColumn    ctermbg=233  ctermfg=232  cterm=none
	"
	" -> Visual Mode
	hi Visual         ctermbg=238    ctermfg=248   cterm=none 
	hi VisualNOS      ctermbg=238    ctermfg=248   cterm=none

	" -> Code
	" - Comment 
	hi Comment        ctermbg=234  ctermfg=240   cterm=none
	" - Constant 
	hi Constant       ctermbg=234  ctermfg=76    cterm=Bold
	hi String         ctermbg=234  ctermfg=24    cterm=Bold
	hi Character      ctermbg=234  ctermfg=214    cterm=Bold
    hi Number         ctermbg=234  ctermfg=124   cterm=Bold
    hi boolean        ctermbg=234  ctermfg=25    cterm=Bold
    hi Float          ctermbg=234  ctermfg=140   cterm=Bold
	" - Identifier 
	hi Identifier     ctermbg=234  ctermfg=75    cterm=none
	hi Function       ctermbg=234  ctermfg=117   cterm=none
	" - Statement 
	hi Statement      ctermbg=234  ctermfg=149   cterm=Bold
	hi Conditional    ctermbg=234  ctermfg=106   cterm=Bold
	hi Repeat         ctermbg=234  ctermfg=29   cterm=Bold
	hi Label          ctermbg=234  ctermfg=107   cterm=Bold
	hi Operator       ctermbg=234  ctermfg=22   cterm=Bold
	hi Keyword        ctermbg=234  ctermfg=184   cterm=Bold
	hi Exception      ctermbg=234  ctermfg=23   cterm=Bold 
	" - PreProc 
	hi PreProc        ctermbg=234  ctermfg=99    cterm=Bold
	hi Include        ctermbg=234  ctermfg=135   cterm=Bold
	hi Define         ctermbg=234  ctermfg=134   cterm=Bold
	hi Macro          ctermbg=234  ctermfg=133   cterm=Bold
	hi PreCondit      ctermbg=234  ctermfg=132   cterm=Bold
	" - Type 
	hi Type           ctermbg=234  ctermfg=130   cterm=Bold
	hi StorageClass   ctermbg=234  ctermfg=173   cterm=Bold
	hi Structure      ctermbg=234  ctermfg=202   cterm=Bold
	hi TypeDef        ctermbg=234  ctermfg=94   cterm=Bold
	" - Special 
	hi Special        ctermbg=234  ctermfg=214   cterm=Bold
	hi SpecialChar    ctermbg=234  ctermfg=88    cterm=Bold
	hi Tag            ctermbg=234  ctermfg=214   cterm=Bold
	hi Delimiter      ctermbg=234  ctermfg=227   cterm=none
	hi SpecialComment ctermbg=234  ctermfg=227   cterm=none
	hi Debug          ctermbg=234  ctermfg=227   cterm=none
	" - Others 
	"hi Underlined     ctermbg=234  ctermfg=203   cterm=underline
	hi Underlined     ctermbg=234  ctermfg=203   cterm=bold
	hi Ignore         ctermbg=234  ctermfg=196   cterm=none
	hi Error          ctermbg=234  ctermfg=203   cterm=none
	hi Todo           ctermbg=234  ctermfg=203   cterm=bold

	hi MatchParen     ctermbg=214  ctermfg=234   cterm=none

	" -> HTML-specific
	hi htmlBold                 ctermbg=232  ctermfg=252   cterm=bold
	hi htmlBoldItalic           ctermbg=232  ctermfg=252   cterm=bold,italic
	hi htmlBoldUnderline        ctermbg=232  ctermfg=252   cterm=bold,underline
	hi htmlBoldUnderlineItalic  ctermbg=232  ctermfg=252   cterm=bold,underline,italic
	hi htmlItalic               ctermbg=232  ctermfg=252   cterm=italic
	hi htmlUnderline            ctermbg=232  ctermfg=252   cterm=underline
	hi htmlUnderlineItalic      ctermbg=232  ctermfg=252   cterm=underline,italic

endif

hi! default link bbcodeBold htmlBold
hi! default link bbcodeBoldItalic htmlBoldItalic
hi! default link bbcodeBoldItalicUnderline htmlBoldUnderlineItalic
hi! default link bbcodeBoldUnderline htmlBoldUnderline
hi! default link bbcodeItalic htmlItalic
hi! default link bbcodeItalicUnderline htmlUnderlineItalic
hi! default link bbcodeUnderline htmlUnderline

" Spellcheck formatting
if has("spell")
	hi SpellBad   guisp=#FC4234 gui=undercurl
	hi SpellCap   guisp=#70BDF1 gui=undercurl
	hi SpellLocal guisp=#FFEE68 gui=undercurl
	hi SpellRare  guisp=#6DF584 gui=undercurl
endif
