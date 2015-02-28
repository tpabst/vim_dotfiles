"############################################################################
"#               A D V A N C E D   C O N F I G U R A T I O N   		    #
"############################################################################


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Developpements  options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cin				" c indentation
set ofu=syntaxcomplete#Complete
set foldmethod=manual		" repli de code :help fold ou :help foldmethod
set foldcolumn=2

"set errorformat^=%-G%f:%l:\ warning:%m
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"----------------------------------------------------------------------------
" YouCompleteMe
"----------------------------------------------------------------------------

let g:ycm_confirm_extra_conf = 0                " do not confirme conf
let g:ycm_min_num_of_chars_for_completion = 3   " minimum char to run ycm
let g:ycm_auto_trigger = 1                      " auto show tab, set 0 to turn of
let g:ycm_allow_changing_updatetime = 200       " changed updatetime
let g:ycm_complete_in_strings = 1               " show menu inside string
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_collect_identifiers_from_tags_files = 1

"----------------------------------------------------------------------------
" TList configuration
"----------------------------------------------------------------------------
let Tlist_Exit_OnlyWindow = 1      " vim se ferme si il reste uniquement la fenêtre des tags
let Tlist_Process_File_Always = 1  " activation permanente du plugin pour la barre de statut
let Tlist_Use_Right_Window = 1     " affiche les tags sur le côté droit de l'écran
"----------------------------------------------------------------------------

" Make
"set makeprg=bear\ --\ make

"----------------------------------------------------------------------------
" get  tags
"----------------------------------------------------------------------------
"set tags=tags,$WORKSPACE/tags,~/.vim/tags/tags
nnoremap <leader>ct :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/
""----------------------------------------------------------------------------
"############################################################################

