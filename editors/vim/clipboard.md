# vim clipboard

For X11-based systems (ie. Linux and most other UNIX-like systems) there are two clipboards which are independent of each other:

    PRIMARY - This is copy-on-select, and can be pasted with the middle mouse button.
    CLIPBOARD - This is copied with (usually) ^C, and pasted with ^V (It's like MS Windows).

OS X and Windows systems only have one clipboard.

Vim has two special registers corresponding to these clipboards:

    * uses PRIMARY; mnemonic: Star is Select (for copy-on-select)
    + uses CLIPBOARD; mnemonic: CTRL PLUS C (for the common keybind)

Vim commands such as :yank or :paste operate with the unnamed register, which by default corresponds to the "* register. If the +clipboard feature is available, the "* register is reflected to the PRIMARY buffer in X.

To change the default register, you can :set clipboard=unnamedplus to use the "+ register instead. The "+ register corresponds to the CLIPBOARD buffer in X.


Most Linux distributions ship with a "minimal" Vim build by default, which doesn't have +clipboard, but you can usually install it:
Arch Linux: install gvim (this will enable +clipboard for normal vim as well).
:echo has('clipboard')


## sources
https://wiki.archlinux.org/index.php/Clipboard
https://vi.stackexchange.com/questions/84/how-can-i-copy-text-to-the-system-clipboard-from-vim
https://wiki.archlinux.org/index.php/Vim

