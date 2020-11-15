# ctags
* ctags -R *  (create index)
* vim -t <tag>
* :tag <tag>
* Ctrl + ] (on a tag)
* Using Ctrl + T you'll navigate backwards on the tag stack.
* The stack can be shown with :tags, where > points to the active entry.
* :help tag
* :tselect {ident} shows all tags that matches {ident}
* :tag /<pattern>
* :find <filename> (to work recursively set path+=** and to ignore file set wildignore+=*/node_modules/*,*/vendor/*)


ctags --print-language --exclude=node_modules --exclude=bin -R *
ctags --exclude=node_modules --exclude=bin -R *


