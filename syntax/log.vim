" Vim syntax file
" Language:     log files
" Maintainer:   Thomas Pabst tpabst@c-s.si.fr
" Version:      0.1
" Last Change:  2012-9-11

" Usage: 
"
"   Source it from somewhere
"
" Changelog: 
"   start project
"
"
if exists("b:current_syntax")
    finish
endif

runtime syntax/c.vim
runtime colors/logcolor.vim
set colorcolumn=10000
execute "set colorcolumn=" . join(range(10000,10001), ',')

setlocal iskeyword+=|
syn case ignore

let s:ft = matchstr(&ft, '^\([^.]\)\+')

syntax keyword logPriority      NOTSET
syntax keyword logPriority      DEBUG
syntax keyword logPriority      INFO
syntax keyword logPriority      NOTICE
syntax keyword logPriorityWarn  WARN
syntax keyword logPriorityErr   ERROR
syntax keyword logPriorityErr   CRIT
syntax keyword logPriorityErr   ALERTE
syntax keyword logPriorityErr   FATAL
syntax keyword logPriorityErr   EMERG

syntax keyword logEvent SYS_UTILS_MEM
syntax keyword logEvent SYS_UTILS_FILE_ACCESS
syntax keyword logEvent SYS_UTILS_OTHER
syntax keyword logEvent SYS_UTILS_INOUT
syntax keyword logEvent SYS_UTILS_HLA
syntax keyword logEvent SYS_UTILS_CORBA
syntax keyword logEvent SYS_UTILS_TCP
syntax keyword logEvent SYS_UTILS_PERF
syntax keyword logEvent SYS_UTILS_UDP
syntax keyword logEvent SYS_UTILS_OPENGL


syn keyword logVariable pid version hardware exec
syn keyword logIgnore unknown
syn keyword logSpecialChar =
syn keyword logSpecialChar $
syn keyword logSpecialChar ::
syn keyword logSpecialChar µs

syn region logArea start=/\[/ end=/]/
"            \ contained oneline contains=CONTAINED,cmakeTodo,cmakeEscaped
"syn region cmakeVariableValue start=/\${/ end=/}/
"            \ contained oneline contains=CONTAINED,cmakeTodo
"syn region cmakeEnvironment start=/\$ENV{/ end=/}/
"            \ contained oneline contains=CONTAINED,cmakeTodo
"syn region cmakeString start=/"/ end=/"/ 
"            \ contains=CONTAINED,cmakeTodo,cmakeOperators
"syn region cmakeArguments start=/(/ end=/)/ 
"            \ contains=ALLBUT,cmakeArguments,cmakeTodo
" Default highlighting

hi def link logVariable         Identifier
hi def link logIgnore           Ignore
hi def link logEvent            MACRO 
hi def link logPriority         SpecialComment 
hi def link logPriorityErr      Error
hi def link logPriorityWarn     Todo
hi def link logArea             Keyword
hi def link logSpecialChar      SpecialChar



