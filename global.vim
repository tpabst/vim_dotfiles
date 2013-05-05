"############################################################################
"#       G L O B A L E   V I M   C O N F I G U R A T I O N   F I L E	    #
"############################################################################

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Main options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
"set paste                       " suppression de la tabulation lors du copier/coller
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Coloration options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256                   " Allow 256 colors
set background=dark		" fond noir par défaut
syntax on			" activation de la coloration syntaxique
colorscheme thomas-256   	" jeu de couleur pour vim
" Best color theme
"mustang vitamins clue dante ir_black darkdevel oceanblack256 256-jungle charged-256
"calmar256-dark desert desert256 trivial256 wombat256 xoria256 sorcerer solarized
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Personnalisation de la barre de statut
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2                                        " always show statusline
set statusline+=[%-n]                                   " buffer number
set statusline+=\ Ξ\ %-{&ff}                            " FileFormat (dos/unix..) 
set statusline+=\ -\ %-{''.(&fenc!=''?&fenc:&enc).''}   " Encoding
set statusline+=\ -\ %-{&spelllang}                     " Spellanguage & Highlight on?
set statusline+=\ ~\ %-y                                " FileType
set statusline+=\ \ Ξ\ \ %-.40F                         " File+path
set statusline+=%=                                      " net will be align right 
set statusline+=%l/                                     " current line
set statusline+=%L                                      " total lines
set statusline+=-%v\                                    " virtual column number
set statusline+=%m%r%w\ %P\                             " Modified? Readonly? Top/bot.

" powerline call
"set rtp+=/home/thomas/datas/resources/tools/vim/powerline/powerline/bindings/vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Research  options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch			" surligne les recherches
set incsearch			" recherche au fur et à mesure
set ignorecase			" ignore la case
set smartcase			" Override the 'ignorecase' option if the search 
				" pattern contains upper case characters
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text  options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set textwidth=0			" pas de coupure de ligne par défaut
set wildignore=*.bak,*.o,*.e,*~	" wildmenu: ignore these extensions
set wildmenu			" comman-line completion in an enhanced mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"############################################################################
