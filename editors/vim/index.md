# vim

- [vimrc](./vimrc.md)

- [navigation](navigation)
- [editing](editing)
- [visual_mode](visual_mode)
- [buffers_windows_tabs](buffers_windows_tabs)
- [help](./help.md)
- [search](./search.md)
- [sessions](./sessions.md)
- [git](./git.md)
- [marks](./marks.md)
- [folding](./folding.md)

- [buffers](./buffers.md) and swaps
- [windows](./windows.md)
- [tabs](./tabs.md)

## File Exploring
- [netrw](./netrw.md) and vim-vinegar

# Reusability
- [macros](./macros.md)
- [scripting](./scripting.md)
- [plugins](./plugins.md)
- [autocommands](./autocommands.md)

## Neovim
- Location: ~/.config/nvim folder
- Config: ~/.config/nvim/init.vim

## Vim
Config; ~/.vimrc
- :version (to see location of vimrc file)
- :set gfn? (see font used)
- :h gui
- :source .vimrc (reload vimrc)
- :scriptnames list all the .vim files that Vim loaded for you, including your .vimrc file.
- :e $MYVIMRC open & edit the current .vimrc
- set ft=text (set file type)

- C-^ : go to last buffer
- <c-p> or <c-n> : select prevous/ext from vin auto complete

## Command Mode
To paste in comand mode use <C-R>"p

## Commands
- :command (get list of user-defined commands)
- :Explore (opens file explorer window)
- :pwd (to see directory from where vim is operating)

## [moving_through_code](./moving_through_code.md)

## Shell Commands
- :!ls (to run shell commands from vim)
- :r!date (to put output of shell command in current document)
- :copen (to see results of grep, errors, etc)
- sort lines of text
  :%!sort
- delete current file
  :!rm %
- move current file
  :!mv % ./dir/

## Key-mappings
- :verbose map <key> (to find key-mapping)
- :map (to display list of keys that are currently mapped)



## Useful Urls
https://vimcommands.github.io/
https://github.com/tpope/vim-surround/blob/master/doc/surround.txt
https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL
https://github.com/ggreer/the_silver_searcher
https://github.com/mileszs/ack.vim
https://dougblack.io/words/a-good-vimrc.html
https://github.com/mhinz/vim-galore
https://github.com/tpope/vim-sensible/blob/master/plugin/sensible.vim
https://github.com/VundleVim/Vundle.vim
https://github.com/vim-syntastic/syntastic
https://github.com/janko-m/vim-test
https://github.com/wellle/targets.vim
https://github.com/junegunn/fzf.vim
https://github.com/myusuf3/numbers.vim
https://www.cheatography.com/stepk/cheat-sheets/vim-nerdtree/
https://sanctum.geek.nz/arabesque/buffers-windows-tabs/
https://github.com/jistr/vim-nerdtree-tabs
https://github.com/w0rp/ale




"""""""""""""""" COC """"""""""""""""""""""'
" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" :h ins-completion
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" https://github.com/neoclide/coc.nvim/wiki/Using-the-configuration-file
" command highlighting in json
autocmd FileType json syntax match Comment +\/\/.\+$+

" fix for not visible documentation
hi link CocFloating markdown

" https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


" coc-explorer
nnoremap <silent> <space>x  :<C-u>CocCommand explorer<CR>