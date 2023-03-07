" Name:         Rain
" Author:       Andrew Carter <ascarter@uw.edu>
" Maintainer:   Andrew Carter <ascarter@uw.edu>
" Website:      https://github.com/ascarter/vim-rain
" License:      MIT
" Last Updated: Tue Mar  7 11:03:03 2023

" Generated by Colortemplate v2.2.0

hi clear
let g:colors_name = 'rain'

let s:t_Co = exists('&t_Co') && !has('gui_running') ? (&t_Co ?? 0) : -1
let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running')

hi! link Boolean Constant
hi! link Character Constant
hi! link Conditional Statement
hi! link CurSearch IncSearch
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi! link Debug Special
hi! link Define PreProc
hi! link Delimiter Special
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link MessageWindow WarningMsg
hi! link Number Constant
hi! link Operator Statement
hi! link PopupNotification WarningMsg
hi! link PopupSelected PmenuSel
hi! link PreCondit PreProc
hi! link QuickFixLine Search
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link StorageClass Type
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link lCursor Cursor
hi! link Statement Identifier
hi! link Type Identifier
hi! link PreProc Identifier

if &background ==# 'dark'
  if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = ['#eeeeee', '#eeeeee', '#eeeeee', '#eeeeee', '#eeeeee', '#eeeeee', '#eeeeee', '#eeeeee', '#111111', '#111111', '#111111', '#111111', '#111111', '#111111', '#111111', '#111111']
  endif
  hi Normal guifg=#eeeeee guibg=#111111 gui=NONE cterm=NONE
  hi Visual guifg=#111111 guibg=#eeeeee gui=NONE cterm=NONE
  hi Bold guifg=NONE guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
  hi Comment guifg=#999999 guibg=NONE gui=italic cterm=italic
  hi String guifg=#999999 guibg=NONE gui=NONE cterm=NONE
  hi Identifier guifg=#cccccc guibg=NONE gui=NONE cterm=NONE
  hi Constant guifg=#999999 guibg=NONE gui=bold cterm=bold
  hi Special guifg=#eeeeee guibg=NONE gui=bold cterm=bold
  hi LineNr guifg=#666666 guibg=NONE gui=NONE cterm=NONE
  hi CursorLineNr guifg=#999999 guibg=#111111 gui=bold cterm=bold
  hi CursorLine guifg=NONE guibg=#333333 gui=NONE cterm=NONE
  if !s:italics
    hi Comment gui=NONE cterm=NONE
  endif
else
  " Light background
  if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = ['#111111', '#111111', '#111111', '#111111', '#111111', '#111111', '#111111', '#111111', '#eeeeee', '#eeeeee', '#eeeeee', '#eeeeee', '#eeeeee', '#eeeeee', '#eeeeee', '#eeeeee']
  endif
  hi Normal guifg=#111111 guibg=#eeeeee gui=NONE cterm=NONE
  hi Visual guifg=#eeeeee guibg=#999999 gui=NONE cterm=NONE
  hi Bold guifg=NONE guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
  hi Comment guifg=#666666 guibg=NONE gui=italic cterm=italic
  hi String guifg=#666666 guibg=NONE gui=NONE cterm=NONE
  hi Identifier guifg=#333333 guibg=NONE gui=NONE cterm=NONE
  hi Constant guifg=#666666 guibg=NONE gui=bold cterm=bold
  hi Special guifg=#111111 guibg=NONE gui=bold cterm=bold
  hi LineNr guifg=#999999 guibg=NONE gui=NONE cterm=NONE
  hi CursorLineNr guifg=#666666 guibg=#eeeeee gui=bold cterm=bold
  hi CursorLine guifg=NONE guibg=#cccccc gui=NONE cterm=NONE
  if !s:italics
    hi Comment gui=NONE cterm=NONE
  endif
endif

if s:t_Co >= 256
  if &background ==# 'dark'
    hi Normal ctermfg=255 ctermbg=233 cterm=NONE
    hi Visual ctermfg=233 ctermbg=255 cterm=NONE
    hi Bold ctermfg=NONE ctermbg=NONE cterm=bold
    hi Comment ctermfg=247 ctermbg=NONE cterm=italic
    hi String ctermfg=247 ctermbg=NONE cterm=NONE
    hi Identifier ctermfg=252 ctermbg=NONE cterm=NONE
    hi Constant ctermfg=247 ctermbg=NONE cterm=bold
    hi Special ctermfg=255 ctermbg=NONE cterm=bold
    hi LineNr ctermfg=241 ctermbg=NONE cterm=NONE
    hi CursorLineNr ctermfg=247 ctermbg=233 cterm=bold
    hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE
    if !s:italics
      hi Comment cterm=NONE
    endif
  else
    " Light background
    hi Normal ctermfg=233 ctermbg=255 cterm=NONE
    hi Visual ctermfg=255 ctermbg=247 cterm=NONE
    hi Bold ctermfg=NONE ctermbg=NONE cterm=bold
    hi Comment ctermfg=241 ctermbg=NONE cterm=italic
    hi String ctermfg=241 ctermbg=NONE cterm=NONE
    hi Identifier ctermfg=236 ctermbg=NONE cterm=NONE
    hi Constant ctermfg=241 ctermbg=NONE cterm=bold
    hi Special ctermfg=233 ctermbg=NONE cterm=bold
    hi LineNr ctermfg=247 ctermbg=NONE cterm=NONE
    hi CursorLineNr ctermfg=241 ctermbg=255 cterm=bold
    hi CursorLine ctermfg=NONE ctermbg=252 cterm=NONE
    if !s:italics
      hi Comment cterm=NONE
    endif
  endif
  unlet s:t_Co s:italics
  finish
endif

" Background: dark
" Color: background #111111 ~
" Color: highlight  #333333 ~
" Color: cursor     #666666 ~
" Color: comment    #999999 ~
" Color: identifier #CCCCCC ~
" Color: foreground #EEEEEE ~
" Term colors: foreground foreground foreground foreground foreground foreground foreground foreground
" Term colors: background background background background background background background background
" Background: light
" Color: background #EEEEEE ~
" Color: highlight  #CCCCCC ~
" Color: cursor     #999999 ~
" Color: comment    #666666 ~
" Color: identifier #333333 ~
" Color: foreground #111111 ~
" Term colors: foreground foreground foreground foreground foreground foreground foreground foreground
" Term colors: background background background background background background background background
" vim: et ts=2 sw=2
