# XResources
Xresources is a user-level configuration dotfile, typically located at ~/.Xresources.

In the X Window System, the X resources are parameters of computer programs such as the name of the font used in the buttons, the background color of menus, etc. They are used in conjunction with or as an alternative to command line parameters and configuration files.

At the X protocol level, resources are strings that are stored in the server and have no special meaning. The syntax and meaning of these strings is given by client libraries and applications.

Every X resource specifies a parameter for a program or one of its components. A fully specified resource has the following format:

    application.component.subcomponent.subcomponent.attribute: value

## wildcards
The * character is used to match any number of components.
the ? character is used to match the application name or a single component

to set foreground
*foreground: #FFFFFF : works with every terminal
URxvt*foreground: #FFFFFF : works with only URxvt
xterm*foreground: #FFFFFF : works with xterm only


## sources
https://wiki.archlinux.org/index.php/X_resources
https://en.wikipedia.org/wiki/X_resources

