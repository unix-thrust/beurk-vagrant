" Vim syntax file
" Language: mytodo
" Maintainer: Jean-Baptiste Hétier
" Latest Revision: 04/08/2011

if exists("b:current_syntax")
  finish
endif

syn match todoTitle '^\S\+.*$'
syn match todoPeople '@\S\+'
syn match todoPeople '@\S\+\s\u\S*'
syn match todoProject '\s+\S\+'
syn match todoImportant '^\s*!\s.*$' contains=todoProject,todoPeople,todoDate
syn match todoList '^\s*\*\s'
syn match todoDate /\d\{4\}\/\d\{2\}\/\d\{2\}/

hi todoTitle term=bold ctermfg=DarkCyan guifg=DarkCyan gui=bold
hi todoPeople ctermfg=DarkGreen guifg=DarkGreen
hi todoProject term=bold ctermfg=DarkYellow guifg=DarkYellow gui=bold
hi todoImportant term=bold ctermfg=Red guifg=Red gui=bold
hi todoList ctermfg=DarkMagenta guifg=DarkMagenta
hi todoDate term=underline gui=underline 

let b:current_syntax = "mytodo"
