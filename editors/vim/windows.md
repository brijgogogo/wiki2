# Vim Windows
:help windows

## Splitting
- open new buffer by splitting the window to create a new window
  :new
- create horizontal split (same buffer)
  :sp
  :split
  :sp <fileName>
  C-w-s
- vertial split (same buffer)
  :vsplit
  :vs
  C-w-v


## moving windows
- moves current window
  C-w-<capitalized-motion-key>

## closing windows
- close all except current one
  :on
  :only
- close window
  :q
  C-w-c


## Switching between windows
- move betwen windows (:help ^ww)
  C-w-w
- move to window down/up/left/right (j,k,l,h)
  C-w-<motion key>

# Resizing
* :resize 60 or :res 60 : change height to 60 rows
* :res +5
* :res -5
* :vertical resize 80 : change width to 80 columns
* :vertical resize +5
* :vertical resize -5
* <C-w, +>, <C-w, -> : in split, resize height of current window by a single row
* <C-w, >>, <C-w, <> : in vsplit, resize width of current window by a single column
* <C-w, 10+> : increase size by 10 lines
* <C-w, => : resize all to equal dimensions
* <C-w, _> : max height
* <C-w, |> : max width
$ Ctrl-w r (rotates window)
$ Ctrl-w R (rotates in opposite direction)

## Misc
- execute in all windows
  :windo %s/#/@/g
