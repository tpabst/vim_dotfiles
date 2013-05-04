"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc file create by Thomas PABST
" thomas.pabst@gmail.com
" Created: 21/11/2009
" Updated: 11/03/2013
" Version: v2.0
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Main options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible		" désactivation de la compatibilité avec vi
set ttyfast			" affichage distant, affichage rapide
set number			" numérotation des lignes
set autoindent			" indentation automatique
set smartindent			" indentation plus intelligente
set formatoptions=trcoqn	" indentation
set backspace=indent,eol,start	" autorisation du retour en arrière
set history=100			" 100 lignes dans l'historique
set ruler			" affiche la position du curseur en bas
set showcmd			" affichage la commande en cours
set shiftwidth=4		" nombre de tabulation pour l'indentation
set softtabstop=4		" nombre d'espace pour la tabulation
set expandtab			" use Ctrl+V to insert a tab
set showmatch			" vérification présence ([ ou { à la frappe de )] ou }
set cursorline			" afficher la ligne courante
set mouse=a			" active la souris
set paste                       " suppression de la tabulation lors du copier/coller

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Coloration options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:set t_Co=256                   " Allow 256 colors
set background=dark		" fond noir par défaut
syntax on			" activation de la coloration syntaxique
"colorscheme mustang		" jeu de couleur pour vim
"colorscheme vitamins		" jeu de couleur pour vim
"colorscheme dante		" jeu de couleur pour vim
"colorscheme ir_black		" jeu de couleur pour vim
"colorscheme darkdevel		" jeu de couleur pour vim
"colorscheme oceanblack256	" jeu de couleur pour vim
"colorscheme 256-jungle 	" jeu de couleur pour vim
"colorscheme thomas-256   	" jeu de couleur pour vim
"colorscheme charged-256 	" jeu de couleur pour vim
"colorscheme calmar256-dark 	" jeu de couleur pour vim
"colorscheme desert  		" jeu de couleur pour vim
"colorscheme desert256		" jeu de couleur pour vim
"colorscheme trivial256		" jeu de couleur pour vim
colorscheme wombat256  	" jeu de couleur pour vim
"colorscheme xoria256     	" jeu de couleur pour vim
"colorscheme sorcerer     	" jeu de couleur pour vim
"colorscheme solarized     	" jeu de couleur pour vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin on
filetype indent on
autocmd FileType text setlocal textwidth=78	".txt limité à 78 caractères par ligne
autocmd FileType todo setlocal textwidth=78	".todo limité à 78 caractères par ligne
set fileformats=unix ",mac,dos	" gestion des retours chariot selon le type de fichier
set autowrite			" enregistre le fichier si modifié
set autoread			" réactualise le fichier s'il a été modifié endehors
set hidden			" when off a buffer is unloaded when it is
set browsedir=current		" which directory to use for the file browser
set complete+=k			" scan the files given with the '


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Research  options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch			" surligne les recherches
set incsearch			" recherche au fur et à mesure
set ignorecase			" ignore la case
set smartcase			" Override the 'ignorecase' option if the search 
				" pattern contains upper case characters

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text  options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set textwidth=0			" pas de coupure de ligne par défaut
set listchars=tab:>.,eol:\$	" strings to use in 'list' mode
set wildignore=*.bak,*.o,*.e,*~	" wildmenu: ignore these extensions
set wildmenu			" comman-line completion in an enhanced mode


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Developpements  options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set cin				" c indentation
set completeopt=menuone		" use a popup menu ti show the possible completions
set completeopt+=longest	" Only insert the longest common text of the matches
"OmniCpp_SelectFirst=2
set ofu=syntaxcomplete#Complete
set foldmethod=manual		" repli de code :help fold ou :help foldmethod


"############################################################################
"#                         M A P - K E Y B O A R D			    #
"############################################################################


"----------------------------------------------------------------------------
" Map F2: Trouve le fichier source .cpp  correspondant
"----------------------------------------------------------------------------
map <F2> :vsp1 %:p:s?Include?Src?:r.cpp<CR>
"----------------------------------------------------------------------------

"----------------------------------------------------------------------------
" Map F3: Trouve le fichier d'interface .ui  correspondant
"----------------------------------------------------------------------------
map <F3> :vsp1 %:p:s?Include?Src?:r.ui<CR>
"----------------------------------------------------------------------------

"----------------------------------------------------------------------------
" Map F4: Trouve le fichier header .h  correspondant
"----------------------------------------------------------------------------
map <F4> :vsp1 %:p:s?Src?Include?:r.h<CR>
"----------------------------------------------------------------------------

"----------------------------------------------------------------------------
" Map F5: Récupère le fichier de Tag
"----------------------------------------------------------------------------
map <F5> :set tags=tags,./tags,$WORKSPACE/tags,QTDIR/include/tags<CR>
"----------------------------------------------------------------------------





"############################################################################
"#                            S C R I P T S				    #
"############################################################################



"============================================================================
"	    BUFFERS, WINDOWS
"============================================================================


"----------------------------------------------------------------------------
" The current directory is the directory of the file in the current window.
"----------------------------------------------------------------------------

if has("autocmd")
    autocmd BufEnter * :lchdir %:p:h
endif

"----------------------------------------------------------------------------



"----------------------------------------------------------------------------
"
"----------------------------------------------------------------------------



"----------------------------------------------------------------------------
