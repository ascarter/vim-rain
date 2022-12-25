highlight clear
if exists("syntax_on")
 syntax reset
endif

set g:colors_name=”rain”

function!  Coloring(group, guibg, guifg, gui, ctermbg, ctermfg)
  let highlightstr = 'highlight ' . a:group . ' '
  let highlightstr .= 'guibg=' . a:guibg . ' '
  let highlightstr .= 'guifg=' . a:guifg . ' '
  let highlightstr .= 'gui=' . a:gui . ' '
  let highlightstr .= 'ctermbg=' . a:ctermbg . ' '
  let highlightstr .= 'ctermfg=' . a:ctermfg . ' '
  let highlightstr .= 'cterm=' . a:gui . ' '
  execute histring
endfunction

highlight Normal guibg=#ffffff
highlight Comment guifg=#ff0000 gui="bold"