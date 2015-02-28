"############################################################################
"#                     V I M   F I L E   O P T I O N S		            #
"############################################################################


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on
filetype indent on
autocmd FileType text setlocal textwidth=100	    ".txt limité à 100 caractères par ligne
autocmd FileType asciidoc setlocal textwidth=100	".txt limité à 100 caractères par ligne
autocmd FileType todo setlocal textwidth=100	    ".todo limité à 100 caractères par ligne
set fileformats=unix,mac,dos	" gestion des retours chariot selon le type de fichier
set autowrite			" enregistre le fichier si modifié
set autoread			" réactualise le fichier s'il a été modifié endehors
set hidden			    " when off a buffer is unloaded when it is
set browsedir=current	" which directory to use for the file browser
set complete+=k			" scan the files given with the '


autocmd BufNewFile,BufRead *.pro       set filetype=qmake
autocmd BufNewFile,BufRead *.incl      set filetype=make
autocmd BufNewFile,BufRead *.mak       set filetype=make
autocmd FileType make :inoremap <buffer><silent><Space> <Space><c-o>:call MapSpaceInMakefile()<CR>
autocmd BufNewFile,BufRead *.lsm       set filetype=make
autocmd BufNewFile,BufRead *_rc        set filetype=cfg
autocmd BufNewFile,BufRead *.conf      set filetype=cfg
autocmd BufNewFile,BufRead *.txt       set filetype=asciidoc
autocmd BufNewFile,BufRead CMakeLists.txt       set filetype=cmake
autocmd BufNewFile,BufRead *.cst       set filetype=cpp
autocmd BufNewFile,BufRead *.log       set filetype=log 
autocmd BufNewFile,BufRead *.ui        set filetype=xml
autocmd BufNewFile,BufRead *.tex       setlocal spell spelllang=fr
autocmd BufNewFile,BufRead *.tex       set tw=100
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
