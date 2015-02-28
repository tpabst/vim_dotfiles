"############################################################################
"#                           F U N C T I O N S				    #
"############################################################################


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Infos-Bulles
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set balloonexpr=FoldSpellBalloon()
"set ballooneval
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Nom du fichier en cours dans l'onglet pour Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Modification de l'affichage des replis
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! MyFoldFunction()
    let line = getline(v:foldstart)
    "Cleanup unwanted things in first line
    let sub = substitute(line, '/\*\|\*/\|^\s+', '', 'g')
    "Calculate lines in folded text
    let lines = v:foldend - v:foldstart + 1
    return v:folddashes.sub.' {...'.lines.' Lines...}'
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set tabstop, softtabstop and shiftwidth to the same value
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Makefile rules
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"############################################################################

