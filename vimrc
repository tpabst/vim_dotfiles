"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" vimrc file create by Thomas PABST
"" thomas.pabst@gmail.com
"" Created: 21/11/2009
 "Updated: 11/03/2013
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
"hi CursorLine guibg=#4d4d4d ctermbg=black
set mouse=a			" active la souris
"set paste                       " suppression de la tabulation lors du copier/coller
set laststatus=2
"nnoremap <silent> <C-N> :noh<CR>


"





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Coloration options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:set t_Co=256                   " Allow 256 colors
set background=dark		" fond noir par défaut
syntax on			" activation de la coloration syntaxique
"colorscheme mustang		" jeu de couleur pour vim
"colorscheme vitamins		" jeu de couleur pour vim
"colorscheme clue		" jeu de couleur pour vim
"colorscheme dante		" jeu de couleur pour vim
"colorscheme ir_black		" jeu de couleur pour vim
"colorscheme darkdevel		" jeu de couleur pour vim
"colorscheme oceanblack256	" jeu de couleur pour vim
"colorscheme 256-jungle 	" jeu de couleur pour vim
colorscheme thomas-256   	" jeu de couleur pour vim
"colorscheme charged-256 	" jeu de couleur pour vim
"colorscheme calmar256-dark 	" jeu de couleur pour vim
"colorscheme desert  		" jeu de couleur pour vim
"colorscheme desert256		" jeu de couleur pour vim
"colorscheme trivial256		" jeu de couleur pour vim
"colorscheme wombat256  	" jeu de couleur pour vim
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
set fileformats=unix,mac,dos	" gestion des retours chariot selon le type de fichier
set autowrite			" enregistre le fichier si modifié
set autoread			" réactualise le fichier s'il a été modifié endehors
set hidden			" when off a buffer is unloaded when it is
"set browsedir=current		" which directory to use for the file browser
set complete+=k			" scan the files given with the '

     autocmd BufNewFile,BufRead *.pro       set filetype=qmake
     autocmd BufNewFile,BufRead *.incl      set filetype=make
     autocmd BufNewFile,BufRead *.mak       set filetype=make
     autocmd FileType make :inoremap <buffer><silent><Space> <Space><c-o>:call MapSpaceInMakefile()<CR>
     autocmd BufNewFile,BufRead *.lsm       set filetype=make
     autocmd BufNewFile,BufRead *_rc        set filetype=cfg
     autocmd BufNewFile,BufRead *.txt       set filetype=text
     autocmd BufNewFile,BufRead *.cst       set filetype=cpp
     autocmd BufNewFile,BufRead *.ui        set filetype=xml
     autocmd BufNewFile,BufRead *.tex       setlocal spell spelllang=fr
     autocmd BufNewFile,BufRead *.tex       set tw=80
augroup END
  

function! MapSpaceInMakefile()
  " if this space is 8th space from the beginning of line, replace 8 spaces with
  " one tab (only at the beginning of file)
  let line = getline('.')
  let col = col('.')
  if strpart(line, 0, 8) == ' '
    let new = "\t" . strpart(line,8)
    call setline('.', new )
  endif
  return ""
endfunction



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
let OmniCpp_SelectFirstItem=2
set ofu=syntaxcomplete#Complete
set foldmethod=manual		" repli de code :help fold ou :help foldmethod
set foldcolumn=2



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Personnalisation de la barre de statut
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set statusline=%t%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [FENC=%{&fileencoding}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]\ [TAG=%{Tlist_Get_Tagname_By_Line()}]


"set statusline=
"set statusline +=%t%m%r%h%w\
"set statusline +=[%{&ff}\ -\
"set statusline +=%{&fileencoding}\ -\
"set statusline +=%Y]\
"set statusline +=[ASCII=\%03.3b\
"set statusline +=HEX=\%02.2B]\
"set statusline +=[POS=%l/%L,%v]\
"set statusline +=[%p%%] 

"[TAG=%{Tlist_Get_Tagname_By_Line()}]

"set statusline=
"set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%3*%y%*                "file type
"set statusline +=%4*\ %<%F%*            "full path
"set statusline +=%2*%m%*                "modified flag
"set statusline +=%1*%=%5l%*             "current line
"set statusline +=%2*/%L%*               "total lines
"set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor
"

"set statusline=
"set statusline+=%7*\[%n]                                  "buffernr
"set statusline+=%1*\ %<%F\                                "File+path
"set statusline+=%2*\ %y\                                  "FileType
"set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
"set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
"set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
"set statusline+=%5*\ %{&spelllang}\  "Spellanguage & Highlight on?
"set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
"set statusline+=%9*\ col:%03c\                            "Colnr
"set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
"
set rtp+=/home/thomas/datas/resources/tools/vim/powerline/powerline/bindings/vim

"
"
"
""############################################################################
""#                         M A P - K E Y B O A R D			    #
""############################################################################
"
"
"----------------------------------------------------------------------------
" Map F2: Trouve le fichier source .cpp  correspondant
"----------------------------------------------------------------------------
map <F2> :vspl %:p:s?Include?Src?:r.cpp<CR>
"----------------------------------------------------------------------------

"----------------------------------------------------------------------------
" Map F3: Trouve le fichier d'interface .ui  correspondant
"----------------------------------------------------------------------------
map <F3> :vspl %:p:s?Include?Src?:r.ui<CR>
"----------------------------------------------------------------------------

"----------------------------------------------------------------------------
" Map F4: Trouve le fichier header .h  correspondant
"----------------------------------------------------------------------------
map <F4> :vspl %:p:s?Src?Include?:r.h<CR>
"----------------------------------------------------------------------------

"----------------------------------------------------------------------------
" Map F5: Récupère le fichier de Tag
"----------------------------------------------------------------------------
"map <F5> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q.<CR>

"----------------------------------------------------------------------------

"set tags+=tags,./tags,$WORKSPACE_FOLDER/tags,QTDIR/include/tags
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/qt4
set tags+=~/.vim/tags/cla

"----------------------------------------------------------------------------
" Map F6: Poser une marque visible avec F6 
"----------------------------------------------------------------------------
"hi Mark guibg=indianred guifg=white gui=bold cterm=bold ctermfg=7 ctermbg=1
"sign define mark text=!> texthl=Mark
"map <F6> :exe 'sign place 001 name=mark line='.line(".").' buffer='.winbufnr(0)<CR>
"map <C-F6> :sign unplace<CR>
"----------------------------------------------------------------------------

"----------------------------------------------------------------------------
" Map F7:  Mapping pour l'activation de l'explorateur système
"----------------------------------------------------------------------------
"nnoremap <silent> <F9> :NERDTree<CR>
map <F7> :NERDTree<CR>
"----------------------------------------------------------------------------

"----------------------------------------------------------------------------
" Map F8: Mapping et configuration pour la liste des tags
"----------------------------------------------------------------------------
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1      " vim se ferme si il reste uniquement la fenêtre des tags
let Tlist_Process_File_Always = 1  " activation permanente du plugin pour la barre de statut
let Tlist_Use_Right_Window = 1     " affiche les tags sur le côté droit de l'écran
"----------------------------------------------------------------------------
" OmniCppComplete
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

 

"############################################################################
"#                            S C R I P T S				    #
"############################################################################



"============================================================================
"	    BUFFERS, WINDOWS
"============================================================================


"----------------------------------------------------------------------------
" The current directory is the directory of the file in the current window.
"----------------------------------------------------------------------------

"if has("autocmd")
"    autocmd BufEnter * :lchdir %:p:h
"endif

"----------------------------------------------------------------------------

"    autocmd BufEnter * :lchdir %:p:h
"endif

"----------------------------------------------------------------------------



"----------------------------------------------------------------------------
" autocomplete parenthesis, brackets and braces
"----------------------------------------------------------------------------

"inoremap ( ()<Left>
"inoremap [ []<Left>
"inoremap { {}<Left>
"
"
"xnoremap  '  s''<Esc>P<Right>
"xnoremap  "  s""<Esc>P<Right>
"xnoremap  `  s``<Esc>P<Right>


" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
"

"----------------------------------------------------------------------------



""""""""""""""""""""""""""""""""""""""""""""""""""
"Infos-Bulles
""""""""""""""""""""""""""""""""""""""""""""""""""
function! FoldSpellBalloon()
    let foldStart = foldclosed(v:beval_lnum)
    let foldEnd = foldclosedend(v:beval_lnum)
    let lines = []
    "Detect if we are in a fold
    if foldStart < 0
        "Detect if we are on a misspelled word
        let lines = spellsuggest(spellbadword(v:beval_text)[0], 5, 0)
    else
        "We are in a fold
        let numLines = foldEnd - foldStart + 1
        "If we have too many lines in fold, show only the first 14
        "and the last 14 lines
        if(numLines > 31)
            let lines = getline(foldStart, foldStart + 14)
            let lines += ['-- Snipped ' . (numLines - 30) . ' lines --']
            let lines += getline(foldEnd - 14, foldEnd)
        else
            "Less than 30 lines, lets show all of them
            let lines = getline(foldStart, foldEnd)
        endif
    endif
    "Return result
    return join(lines, has("balloon_multiline") ? "\n" : " ")
endfunction

set balloonexpr=FoldSpellBalloon()
set ballooneval

""""""""""""""""""""""""""""""""""""""""""""""""""
"Nom du fichier en cours dans l'onglet pour Vim
""""""""""""""""""""""""""""""""""""""""""""""""""
function! ShortTabLine()
    let ret = ''
    for i in range(tabpagenr('$'))
        "Select the color group for highlighting active tab
        if i + 1 == tabpagenr()
            let ret .= '%#errorMsg#'
        else
            let ret .= '%#TabLine#'
        endif

        "Find the buffername for the tablabel
        let buflist = tabpagebuflist(i+1)
        let winnr = tabpagewinnr(i+1)
        let buffername = bufname(buflist[winnr - 1])
        let filename = fnamemodify(buffername, ':t')
        "Check if there is no name
        if filename == ''
            let filename = 'noname'
        endif
        "Only show the first 18 letters of the name and
        ".. if the filename is more than 20 letters long
        if strlen(filename) >= 8
            let ret .= '['.filename[0:17].'..]'
        else
            let ret .= '['.filename.']'
        endif
    endfor

    "After the last tab fill with TabLineFill and reset tab page #
    let ret .= '%#TabLineFill#%T'
    return ret
endfunction

set tabline=%!ShortTabLine()

""""""""""""""""""""""""""""""""""""""""""""""""""
"Modification de l'affichage des replis
""""""""""""""""""""""""""""""""""""""""""""""""""
function! MyFoldFunction()
    let line = getline(v:foldstart)
    "Cleanup unwanted things in first line
    let sub = substitute(line, '/\*\|\*/\|^\s+', '', 'g')
    "Calculate lines in folded text
    let lines = v:foldend - v:foldstart + 1
    return v:folddashes.sub.' {...'.lines.' Lines...}'
endfunction

set foldtext=MyFoldFunction()


""""""""""""""""""""""""""""""""""""""""""""""""""
" Set tabstop, softtabstop and shiftwidth to the same value
""""""""""""""""""""""""""""""""""""""""""""""""""
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction
  
function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction
