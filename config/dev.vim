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

set errorformat^=%-G%f:%l:\ warning:%m
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
" OmniCppComplete
"----------------------------------------------------------------------------
" et OmniCpp_SelectFirstItem=2
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_ShowScopeInAbbr = 1
"let OmniCpp_ShowPrototypeInAbbr = 1
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"" automatically open and close the popup menu / preview window
"autocmd CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"set completeopt=menuone,menu,longest,preview
"----------------------------------------------------------------------------

 
"----------------------------------------------------------------------------
" TList configuration
"----------------------------------------------------------------------------
let Tlist_Exit_OnlyWindow = 1      " vim se ferme si il reste uniquement la fenêtre des tags
let Tlist_Process_File_Always = 1  " activation permanente du plugin pour la barre de statut
let Tlist_Use_Right_Window = 1     " affiche les tags sur le côté droit de l'écran
"----------------------------------------------------------------------------


"----------------------------------------------------------------------------
" get  tags
"----------------------------------------------------------------------------
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/tao
set tags+=~/.vim/tags/tao_idl
set tags+=~/.vim/tags/
set tags+=~/.vim/tags/cla_trt
set tags+=~/.vim/tags/cla_com
set tags+=~/.vim/tags/cla_visu
set tags+=~/.vim/tags/qt_qtbase
set tags+=~/.vim/tags/qt_qtscript
set tags+=~/.vim/tags/qt_qttools
set tags+=~/.vim/tags/qt_qtactiveqt
set tags+=~/.vim/tags/qt_qtxmlpatterns
set tags+=~/.vim/tags/qt_qtimageformats
set tags+=~/.vim/tags/qt_qtsvg
set tags+=~/.vim/tags/qt_qtmultimedia
set tags+=~/.vim/tags/qt_qtquick1
set tags+=~/.vim/tags/qt_qtquickcontrols
set tags+=~/.vim/tags/qt_qtdeclarative
""----------------------------------------------------------------------------
"############################################################################

