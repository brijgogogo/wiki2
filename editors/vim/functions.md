# Functions
Pieces of scripts already written and given a name.

  function!GetMyName()
    echo 'Brij'
  endfunction

  command! MyName call GetMyName()

  nnoremap M :MyName<CR>


  function! AddHelloToTop()
    normal HOhello thereA vim user0
    s/hello there/hi/
    return "we added a message"
  endfunction

- function! replaces function with same name

- Creating command for functions
  command! Hello call AddHelloToTop()
  :Hello runs the command

- command! replaces command with same name

- create mapping for function
  nnoremap <leader>h :call AddHelloToTop()<cr>

- Get list of available functions
  :help function-list

- get number of characters in curent line
  :echo strlen(getline("."))

- User-defined functions start with upper case (built-in - lower case)
function CurrentLineLength()
  let len = strlen(getline(".")
  return len
endfunction

- Show output of function
:echo CurrentLineLength()
- Call but not show output
:call CurrentLineLength()

- prints the return value of function
:echom AddHelloToTop()
echom addes the value to messages, visible using :messages



## Useful functions
- has("feature"): checks if a specified feature is supported
(see :help feature-list for available features)
- range(n): generates a range of nubmers (:help range())
- :echo join(split(&runtimepath,','),"\n")
