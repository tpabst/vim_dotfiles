"############################################################################
"#              V I M   C O N F I G U R A T I O N   F I L E                 #
"############################################################################
" vimrc file create by Thomas PABST
" thomas.pabst@c-s.fr
" Created: 21/11/2009
 "Updated: 03/010/2014
" Version: v4.0
"############################################################################

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev @@ thomas.pabst@c-s.fr
iabbrev @n Thomas Pabst
iabbrev @t TPA
iabbrev @c CS

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:LargeFile = 1024 * 1024 * 10
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen call first
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/autoload/pathogen.vim
call pathogen#incubate()
call pathogen#helptags()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:let g:session_autoload = 'no'
:let g:session_autosave = 'no'


"############################################################################
"#       G L O B A L E   V I M   C O N F I G U R A T I O N   F I L E	    #
"############################################################################

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Main options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible	" désactivation de la compatibilité avec vi
set ttyfast			" affichage distant, affichage rapide
set number			" numérotation des lignes
set autoindent		" indentation automatique
set smartindent		" indentation plus intelligente

set formatoptions=trcoqn	    " indentation
set backspace=indent,eol,start	" autorisation du retour en arrière

set history=10000	" 10000 lignes dans l'historique
set ruler			" affiche la position du curseur en bas
set showcmd			" affichage la commande en cours
set tabstop=4       "sizeof tab"
set shiftwidth=4	" nombre de tabulation pour l'indentation
set softtabstop=4	" nombre d'espace pour la tabulation
set expandtab		" use Ctrl+V to insert a tab
set showmatch		" vérification présence ([ ou { à la frappe de )] ou }
set cursorline		" afficher la ligne courante
set mouse=a			" active la souris
"set paste          " suppression de la tabulation lors du copier/coller
set nowrap          " pas de retour à la ligne automatique
"set nomagic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" load vim config files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
    source ~/.vim/config/augroup.vim
endif

source ~/.vim/config/file.vim
source ~/.vim/config/dev.vim
source ~/.vim/config/map.vim
source ~/.vim/config/function.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Coloration options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on			    " activation de la coloration syntaxique
set t_Co=256                    " Allow 256 colors
set background=dark	    " fond noir par défaut ! À placer avant le colorscheme !!!
"colorscheme cs256   	" jeu de couleur pour vim
"colorscheme cs256d   	" jeu de couleur pour vim
"colorscheme lucius
"LuciusBlackLowContrast
colorscheme jellybeans

if &diff
    "colorscheme thomas-256   	" jeu de couleur pour vim
    "colorscheme jellybeans
    execute "set colorcolumn="
else
    execute "set colorcolumn=" . join(range(101,355), ',')
endif

"au BufWinEnter * match OverLength /\%101v.\+/

" Best color theme
"mustang vitamins clue dante ir_black darkdevel oceanblack256 256-jungle charged-256
"calmar256-dark desert desert256 trivial256 wombat256 xoria256 sorcerer solarized
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Personnalisation de la barre de statut standard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set laststatus=2                                        " always show statusline
"set statusline+=[%-n]                                   " buffer number
"set statusline+=\ Ξ\ %-{&ff}                            " FileFormat (dos/unix..)
"set statusline+=\ -\ %-{''.(&fenc!=''?&fenc:&enc).''}   " Encoding
"set statusline+=\ -\ %-{&spelllang}                     " Spellanguage & Highlight on?
"set statusline+=\ ~\ %-y                                " FileType
"set statusline+=\ \ Ξ\ \ %-.80F                         " File+path
"set statusline+=%=                                      " net will be align right
"set statusline+=%l/                                     " current line
"set statusline+=%L                                      " total lines
"set statusline+=-%v\                                    " virtual column number
"set statusline+=%m%r%w\ %P\                             " Modified? Readonly? Top/bot.

" powerline call
"set rtp+=/home.local/tpabst/.vim/bundle/powerline/powerline/bindings/vim
"set laststatus=2

" airline - new powerline with only vim scirpts
set laststatus=2
"let g:airline_powerline_fonts = 1
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"----------------------------------------------------------------------------
" Use the same symbols as TextMate for tabstops and EOLs
"----------------------------------------------------------------------------
set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<CR>
cmap w!! w !sudo tee % >/dev/null
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


"----------------------------------------------------------------------------
" Pluggins
"----------------------------------------------------------------------------

" YouCompleteMe
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_autoclose_preview_window_after_insertion = 1
"
"let g:UltiSnipsExpandTrigger="<C-j>"
"let g:UltiSnipsJumpForwardTrigger="<C-j>"
"----------------------------------------------------------------------------

" Syntastic
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
