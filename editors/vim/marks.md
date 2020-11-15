# markers
:help mark-motions

## file markers
Uses a-z as mark names

## global markers
Uses A-Z as mark names

- set a mark
  m<markName>
Mark names can be a-z/A-Z
- jump to a mark
  '<markName>
  `<markName>
' takes you to line
` takes to exact location
- list marks
  :marks
- list specific marks
  :marks aB
  lists mark names a and B
- jump back to from where jumped to marks
''
- delete marks
  :delm[arks] <markName>
- delete marks range
  :delmarks a-d
- delete multiple non-range marks
  :delmarks abxy
- delete all lowercase marks
  delmarks!
- jump to next lowercase mark
  ]'
- jump to prev lowercase mark
  ['
- jump to last edited location
  `.
- jump to beginning of previously changed/yanked text
  '[
- jump to end of previously changed/yanked text
  ']
- delete form curent position to mark's position
  d'm
(similarly v'm, c'm)
- mark of last position
  '0

## special marks
- '< and '> : visual marks
- '{ and '} : paragraph marks
- '(, ') : sentences marks


## vim-signature
https://github.com/kshenoy/vim-signature
Display marks before line numbers.

dmx : delete mark x
m,  : place the next available mark
m. : toggle mark
m- : delete all marks from current line
