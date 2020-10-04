# Vim Plugins
A package is a directory that contains one or more plugins.
A plugin is a directory that contains one or more scripts.
A script is a standalone file containing instructions written in vim script.

Installing a plugin means adding it to Vim's 'runtimepath' (:help 'runtimepath')

:set runtimepath+=/.vim/mypackage/my-plugin

When vim launches, it searches for plugins under .vim/pack/*/start directory

By convention, you create packages within a /.vim/pack directory. Your package should contain a subdirectory called start, which is where you install the plugins that you want to load when Vim starts up.

To load a new plugin, you need to restart vim.


Kinds of plugins:
- vimrc
- global plugin
- filetype plugin
- syntax highlighting plugin
- compiler plugin


## Global plugins
Provides global/generic functionality

Can be stored in:
1. built-in: $VIMRUNTIME/plugin/
2. custom/downloaded:
   - $HOME/vim/plugin/

Check ":help runtimepath" for plugins directories.


## Filetype plugins
Works on certain kinds of files.

Stored at ~/.vim/ftplugin/ directory

autocmd BufNewFile,BufRead *.xml source ~/.vim/ftplugin/xml.vim


## Syntax highlighting plugins


## compiler plugins
Used for compiring programs written in different languages.
:help write-compiler-plugin

- build
:make




## Optional plugins: load when needed
- To load optional plugin from .vim/pack/bundle/opt/<plugin-name>
:packadd <plugin-name>



- To index the documentations of plugins (written in simple markup)
:helptags ALL
