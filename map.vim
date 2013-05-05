"############################################################################
"#                         M A P - K E Y B O A R D			    #
"############################################################################

"----------------------------------------------------------------------------
" F'N-Keys Mapping
"----------------------------------------------------------------------------
" Map F1: 
" Map F2: Trouve le fichier source .cpp  correspondant
" Map F3: Trouve le fichier d'interface .ui  correspondant
" Map F4: Trouve le fichier header .h  correspondant
" Map F5: Récupère le fichier de Tag
" Map F6: 
" Map F7:  Mapping pour l'activation de l'explorateur système
" Map F8: Mapping et configuration pour la liste des tags
"----------------------------------------------------------------------------
map <F2> :vspl %:p:s?Include?Src?:r.cpp<CR>
map <F3> :vspl %:p:s?Include?Src?:r.ui<CR>
map <F4> :vspl %:p:s?Src?Include?:r.h<CR>
"map <F5> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q.<CR>
"map <F6> :
map <F7> :NERDTree<CR>
map <F8> :TlistToggle<CR>
"----------------------------------------------------------------------------
" General mapping
"----------------------------------------------------------------------------
"unselect fields
nnoremap <silent> <C-D> :noh<CR>    
"----------------------------------------------------------------------------

"----------------------------------------------------------------------------
" autocomplete parenthesis, brackets and braces
"----------------------------------------------------------------------------
"inoremap ( ()<Left>
"inoremap [ []<Left>
"inoremap { {}<Left>

"xnoremap  '  s''<Esc>P<Right>
"xnoremap  "  s""<Esc>P<Right>
"xnoremap  `  s``<Esc>P<Right>
"----------------------------------------------------------------------------

"############################################################################


