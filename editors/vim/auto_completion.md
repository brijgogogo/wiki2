# Auto Completion

word completion: default available in vim: <C-N> for next matching work, <C-P> previous
line completion: default available in vim: <C-X>, <C-L>


* Function and mappings for auto-completion using <tab>
function! InsertTabWrapper()
  let col = col(".") - 1
  if !col || getline(".")[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-n>"
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-p>

* echo col(".")
%% gives current column location

## omni-completion
<c-x><c-o> : start completion
<c-n> and <c-p> to navigate pop-menu

## tsuquyomi
<C-]> : go to definition
<C-t> : go to last visited definition
<C-^> : show symbol references
:TsuGeterr : show quickfix window for any error (after writing)
:TsuGeterrProject : show errors in project
:TsuRenameSymbol : rename symbol under cursor
:TsuRenameSymbolC : rename symbol under cursor (also in comments)

autocmd FileType typescript nmap <buffer> <leader>e <Plug>(TsuquyomiRenameSymbol)
autocmd FileType typescript nmap <buffer> <leader>E <Plug>(TsuquyomiRenameSymbolC)

