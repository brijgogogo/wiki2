# qutebrowser

https://qutebrowser.org/img/cheatsheet-big.png

* hjkl for movement

## New tab/window
* o to type and open a url
* O to open in new tab
* :open -p  : open in private
* :open -t  : open in background tab
* f to show hint, then type to visit (F for new tab)

## Url Manipulation
* go to edit current url
* gO : oepn based on current url in new tab
* wo (open in new window)
* yy : copy url
* gu : go up in url
* pp : open url from clipboard (Pp for new tab, wp in new window)
* ;y : hint, yank

## Page Navigation
[[  : click previous link on page
]]  : click next link on page
{{  : click previous link on page in new tab
}}  : click next link on page in new tab
* <C-a/x> increment/decrement number in url

## Tab movement/exit
* J (next tab), K (previous tab), Alt+num (to go to specific tab)
* d (close tab), u (undo close tab)
* :close : close window
* :q to close browser, or :wq to save currently opened tabs
* co (close other tabs)
* T (cycle betwen tabs)
* gm/gl/gr (move tab)

## Scrolling
c-f : page down
c-b : page up
c-d : half page down
c-u ; half page up

## History
* H (go back in history), L (go forward)
* :history

## Search / copy Zoom
* / (search text), n, N (to gor forward / backward)
* - (zoom out), + (zoom in), = (reset zoom)
* v to enter caret mode (search test, then use movement keys to select text)

## stop load / reload
* r (reload)
* <C-s> stop loading


## Downloading
* :download url
* :download-open
* :download-clear

## Quickmarks / Bookmarks
* m : add quick-mark
* b : open quick-mark
* M : add bookmark


## Misc
* : (show command line)
* :adblock-update
* :help (or cmd --help)
* :help tabs.position
* qute://version
* qute://settings or Ss or :set
* i (insert mode)
* gC (clone tab)
* gf : view page source
* wi : open web inspector
* :set tabs.position left
* <C-v> passthrough mode

## Extended Hint Mode
* ;h : hover over hint (mouse-over)
* ;b : open hint in background tab
* ;i : hint images
* ;I : hint images in new tab
* ;o : put hinted url in cmd line
* ;O : put hinted url in cmd line in new tab
* ;y : yank hinted url to clipboard
* ;Y : yank hinted url to selection
* ;r : rapid hinting
* ;d : download hinted url



## Bookmark vs Quickmark
Bookmarks will always use the title of the website as their name, but with quickmarks you can set your own title.
For example, if you bookmark multiple food recipe websites and use :open, you have to type the title or address of the website.
When using quickmark, you can give them all names, like foodrecipes1, foodrecipes2 and so on. When you type :open foodrecipes, you will see a list of all the food recipe sites, without having to remember the exact website title or address.

