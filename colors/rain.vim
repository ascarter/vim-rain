" Rain theme

" Palettes

" Grayscale 0% / 10% / 25% / 50% / 75% / 90% / 100%
"let g:rain_palette = ['#000000', '#222222', '#515151', '#929292', '#cbcbcb', '#ebebeb', '#ffffff']

" Grayscale 10% / 20% / 25% / 50% / 75% / 80% / 90%
let g:rain_palette = ['#222222', '#424242', '#515151', '#929292', '#cbcbcb', '#d6d6d6', '#ebebeb']

function! s:RainColors()
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif

  let g:colors_name="rain"

  " Set colors based off palette.
  " Palette is sorted dark -> light
  let l:colors = g:rain_palette

  if &background == "light"
    " First color is assumed to be background and last color is foreground
    " Reverse palette order for light themes
    call reverse(l:colors)
  endif

  function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
    let cmd = ""
    if a:guifg != ""
      let cmd = cmd . " guifg=" . a:guifg
    endif
    if a:guibg != ""
      let cmd = cmd . " guibg=" . a:guibg
    endif
    if a:ctermfg != ""
      let cmd = cmd . " ctermfg=" . a:ctermfg
    endif
    if a:ctermbg != ""
      let cmd = cmd . " ctermbg=" . a:ctermbg
    endif
    if a:attr != ""
      let cmd = cmd . " gui=" . a:attr . " cterm=" . a:attr
    endif
    if a:guisp != ""
      let cmd = cmd . " guisp=" . a:guisp
    endif
    if cmd != ""
      exec "hi " . a:group . cmd
    endif
  endfunction

  " Set highlight colors
  call s:hi('Normal', l:colors[-1], l:colors[0], 'NONE', 'NONE', '', '')
  call s:hi('Bold', '', '', '', '', 'bold', '')
  call s:hi('Comment', 'NONE', 'NONE', 'NONE', 'NONE', 'italic', '')
  call s:hi('String', l:colors[-4], '', '', '', '', '')
  call s:hi('Identifier', l:colors[-2], 'NONE', 'NONE', 'NONE', '', '')
  call s:hi('LineNr', l:colors[2], 'NONE', 'NONE', 'NONE', '', '')
  call s:hi('CursorLineNr', l:colors[-3], 'NONE', 'NONE', 'NONE', 'bold', '')
  call s:hi('CursorLine', '', l:colors[2], '', '', '', '')

  hi! link Function Identifier
  hi! link Statement Identifier
  hi! link Type Identifier


  " Preferred groups
  "hi Comment gui=bold cterm=bold
  "hi Constant
  "hi Identifier
  "hi Function
  "hi Statement
  "hi PreProc
  "hi Type
  "hi Special
  "hi Underlined
  "hi Ignore
  "hi Error
  "hi Todo

  " Highlight groups
  "hi ColorColumn
  "hi Conceal
  "hi Cursor
  "hi lCursor
  "hi CursorIM
  "hi CursorColumn
  "hi CursorLine
  "hi Directory
  "hi DiffAdd
  "hi DiffChange
  "hi DiffDelete
  "hi DiffText
  "hi EndOfBuffer
  "hi ErrorMsg
  "hi VertSplit
  "hi Folded
  "hi FoldColumn
  "hi SignColumn
  "hi IncSearch
  "hi LineNr
  "hi LineNrAbove
  "hi LineNrBelow
  "hi CursorLineNr
  "hi CursorLineSign
  "hi CursorLineFold
  "hi MatchParen
  "hi MessageWindow
  "hi ModeMsg
  "hi MoreMsg
  "hi Normal
  "hi Pmenu
  "hi PmenuSel
  "hi PmenuSBar
  "hi PmenuThumb
  "hi PopupNotification
  "hi Question
  "hi QuickFixLine
  "hi Search
  "hi CurSearch
  "hi SpecialKey
  "hi SpellBad
  "hi SpellCap
  "hi SpellLocal
  "hi SpellRare
  "hi StatusLine
  "hi StatusLineNC
  "hi StatusLineTerm
  "hi StatusLineTermNC
  "hi TabLine
  "hi TabLineFill
  "hi TabLineSel
  "hi Terminal
  "hi Title
  "hi Visual
  "hi VisualNOS
  "hi WarningMsg
  "hi WildMenu

endfunction

function g:Rain()
  call s:RainColors()
endfunction

" Initialize theme colors based on background state
call g:Rain()
