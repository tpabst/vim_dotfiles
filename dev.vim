"############################################################################
"#               A D V A N C E D   C O N F I G U R A T I O N   		    #
"############################################################################


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Developpements  options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cin				" c indentation
set completeopt=menuone		" use a popup menu ti show the possible completions
set completeopt+=longest	" Only insert the longest common text of the matches
set ofu=syntaxcomplete#Complete
set foldmethod=manual		" repli de code :help fold ou :help foldmethod
set foldcolumn=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"----------------------------------------------------------------------------
" OmniCppComplete
"----------------------------------------------------------------------------
let OmniCpp_SelectFirstItem=2
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
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
set tags+=~/.vim/tags/qt4
"----------------------------------------------------------------------------
"############################################################################


