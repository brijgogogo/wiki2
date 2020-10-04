# Vim Scripting language

## [functions](./functions.md)

## Variables
Names pointing to values

:let len = strlen(getline("."))
:echo "We have" len "characters in this line."

- Environment vriables (prefix $)
  :echo $HOME
- Options (prefix &)
  :echo &filetype
- Registers (prefix @)
  :echo @a

## Decisions
if has("gui_running")
  colorscheme x
else
  colorscheme y
endif

" elseif


## Loops
let i = 0
while i < 5
  echo i
  let i += 1
endwhile

for i in range(5)
  echo i
endfor

- continue and break are available

## Data structures
- list
  let values = ['abc', 'def']
  echo values[0]
  echo len(values)
  call remove(values, 0)
  call sort(values)

  for v in values
    echo "Value is" v
  endfor

(see List manipulation and Dictionary manipulation in :help fucntion-list)



