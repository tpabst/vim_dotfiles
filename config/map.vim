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
" Map F6: make
" Map F7: Mapping pour l'activation de l'explorateur système
" Map F8: Mapping et configuration pour la liste des tags
"----------------------------------------------------------------------------
"map <F2> :vspl %:p:s?Include?Src?:r.cpp<CR>
"map <F2> :vspl %:p:s?Include?Src?:r.cpp<CR>
"map <silent> <C-F2> :spl %:p:s?Include?Src?:r.cpp<CR>
"
"map <F4> :e %:p:s?Src?Include?:r.h<CR>
"map <F4> :vspl %:p:s?Src?Include?:r.h<CR>
"map <silent> <C-F4> :spl %:p:s?Src?Include?:r.h<CR>

map <F2>  :call SwitchSourceHeader()<CR>
map <s-s> :call SwitchSourceHeader()<CR>
map <s-w> :spl<CR>
map <s-q> :vspl<CR>
map <s-x> :q<CR>
"map <F3> :vspl %:p:s?Include?Src?:r.ui<CR>
map <F9> :!ctags -RV --sort=yes --languages=c++ --langmap=c++:+.cst  --c++-kinds=+p -h".cst" --fields=+iaS --extra=+fq .<CR>
"map <F6> :!au BufWinEnter * match OverLength /\%101v.\+/<CR>
map <F5> :copen<CR>
map <F5> :copen<CR><ESC>:make<CR>
map <F7> :make clean<CR>
map <F8> :make<CR>
"map <F9> :set errorformat^=%-G%f:%l:\ warning:%m<CR>
"map <F10> :TlistToggle<CR>
map <F11> :NERDTree<CR>
map <F12> :TagbarToggle<CR>

"----------------------------------------------------------------------------
" General mapping
"----------------------------------------------------------------------------
"unselect fields
nnoremap <silent> <C-D> :noh<CR>
"nnoremap <leader> <C-M> :make<CR>
"imap <C-O> <C-\><C-O>

map cn <esc>:cn<cr>
map cp <esc>:cp<cr>
map cf <esc>:cfirst<cr>
map cl <esc>:clast<cr>
"----------------------------------------------------------------------------
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>

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


