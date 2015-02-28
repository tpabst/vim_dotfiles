"############################################################################
"#              V I M   C O N F I G U R A T I O N   F I L E                 #
"############################################################################
" vimrc file create by Thomas PABST
" thomas.pabst@gmail.com
" Created: 21/11/2009
 "Updated: 04/05/2013
" Version: v3.0
"############################################################################

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev @@ thomas.pabst@gmail.com
iabbrev @n Thomas Pabst
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen call first
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/autoload/pathogen.vim
call pathogen#incubate()
call pathogen#helptags()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" load vim config files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
    source ~/.vim/config/augroup.vim
endif

source ~/.vim/config/global.vim
source ~/.vim/config/map.vim
source ~/.vim/config/file.vim
source ~/.vim/config/dev.vim
source ~/.vim/config/function.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"----------------------------------------------------------------------------
" Use the same symbols as TextMate for tabstops and EOLs
"----------------------------------------------------------------------------
set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<CR>
"----------------------------------------------------------------------------

"----------------------------------------------------------------------------
"Nom du fichier en cours dans l'onglet pour Vim
"----------------------------------------------------------------------------
set tabline=%!ShortTabLine()
"----------------------------------------------------------------------------

"----------------------------------------------------------------------------
"Modification de l'affichage des replis
"----------------------------------------------------------------------------
set foldtext=MyFoldFunction()
"----------------------------------------------------------------------------
"############################################################################

