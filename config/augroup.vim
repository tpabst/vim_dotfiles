" ----------------------------------------------------------------------------
" ~/.vim/augroup.vim (https://github.com/otaviof/vim_confs)
" ----------------------------------------------------------------------------

augroup confluencewiki
    au!
    au BufRead,BufNewFile *.cow setfiletype confluencewiki
augroup end
augroup json
    au!
    au BufRead,BufNewFile *.json setfiletype json
augroup end

augroup jvms
    au!
    au filetype {java,scala} setlocal omnifunc=javacomplete#Complete
augroup end

augroup markdown
    au!
    au filetype html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    au filetype css setlocal omnifunc=csscomplete#CompleteCSS
    au filetype xml setlocal omnifunc=xmlcomplete#CompleteTags
    au syntax mason setlocal equalprg=perltidy omnifunc=PerlComplete
    au filetype mason setlocal keywordprg=perldoc\ -T\ -f
    au syntax {xml,xhtml,html,htm,erb} runtime ftplugin/xml.vim
augroup end

augroup javascript
    au!
    au filetype javascript setlocal omnifunc=javascriptcomplete#CompleteJS
augroup end

augroup perl
    au!
    au syntax perl setlocal equalprg=perltidy omnifunc=PerlComplete
    au filetype perl setlocal keywordprg=perldoc\ -T\ -f
    au filetype perl syn include @perlDATA syntax/MojoliciousTemplate.vim
augroup end

augroup python
    au!
    " au filetype python set omnifunc=pythoncomplete#Complete complete+=k~/.vim/syntax/python.vim isk+=.,(
    " au filetype python setlocal omnifunc=pysmell#Complete complete+=k~/.vim/syntax/python.vim
    au filetype python let python_highlight_all=1
    " au filetype python call NeoComplCacheDisable()
    au BufRead *.py setlocal smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class
augroup end

augroup ruby
    au!
    au filetype ruby setlocal omnifunc=rubycomplete#Complete
    au filetype ruby source ~/.vim/ftplugin/ri.vim
    if !exists("autocommands_ruby_loaded")
        let autocommands_ruby_loaded = 1
        au BufReadPre *.rb setlocal sw=2 ts=2 sw=2 sts=2 nu | let IndentStyle="ruby"
        au BufNewFile *.rb 0r ~/.vim/skeleton.rb | let IndentStyle = "ruby"
    endif
augroup end

augroup text
    au!
    au BufRead,BufNewFile *.txt setlocal ft=txt
    au BufRead,BufNewFile Makefile* setlocal noexpandtab
augroup end

augroup xml
    au!
    au syntax xml setlocal equalprg=xmlindent\ -i\ 2\ -l\ 78
augroup end

augroup help
    au!
    au syntax help setlocal nu
augroup end


"
" NeoComplCache
"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileWritePost * if &diff | colorscheme jellybeans | endif
autocmd BufLeave * execute "set colorcolumn=" . join(range(91,355), ',')
autocmd BufWinLeave * colorscheme jellybeans
autocmd BufWrite * :call RemoveTrailingWhitespace()
autocmd BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<CR>"
"autocmd BufWritePost *.c,*.cpp,*.h,*.cst,*.py, silent! !ctags -R &
" EOF
augroup LargeFile
    autocmd BufReadPre * :call CheckLargeFile()
augroup end


