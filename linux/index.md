# Linux

- [arch_linux](./arch_linux/index.md)


## Essentials
- [shells](./shells.md)
- [bash](./bash/index.md)
- [users_and_groups](./users_and_groups.md)
- [processes](./processes.md)
- [filesystem](./filesystem.md) (files, search, links, [devices](devices), partitions, mount, format, labelling, usb, ntfs, grep, ripgrep, ls, find, bootable usb)
- [networking](./networking.md)
- [system_info](./system_info.md)
- [graphics](./linux_graphics.md) (xorg, wayland)
- [sound](./sound.md)
- [memory](./memory.md) (memory & cpu)
- [logs](./logs.md)
- [daemons](./daemons.md)
- [ssh](./ssh.md)
- [terminals](./terminals.md)
- [variables](variables.md)
- [shell_aliases](shell_aliases)
- [piping_and_redirection](piping_and_redirection)
- [command_substitution](command_substitution)
- [pearls](pearls)
- [commands_and_functions](commands_and_functions)
- [printer](printer.md)


## Tools
- [text_tools](./text_tools.md) (banner, books, pdf, zathura, calibre, search, fuzzy search, cloud, dropbox, diff)
- [media_tools](./media_tools.md) (audio, video, convertors)
- [device_tools](./device_tools.md) (logitech)
- [image_tools](./image_tools.md)
- [file_managers](./file_managers.md) (ranger, vifm, nnn)
- [communication_tools](./communication_tools.md) (mails, rss, chat, download, http, wget, curl)
- [security](./security.md) (password manager, encryption)
- [compression_tools](./compression_tools.md) (split, join, tar)
- [other_tools](./other_tools.md)
- [window_managers](./window_managers.md)
- [design_tools](./design_tools.md)


- [dot_files](./dot_files.md)

## Apps
cat ==> bat
grep ==> Ripgrep (Rust)
ls ==> exa
find ==> fd
hexyl : command-line hex viewer
tldr

## Prompts
- [shell_prompts](shell_prompts)
- starship

## find info on RAM
sudo lshw -short -C memory
sudo dmidecode -t 16

## Common commands
- move/cd by searching
 mv $(ls | fzf) /path/to/destination
 cd $(find -type d | fzf)
- copy with progress bar
  rsync --progress -auv /path/of/source/file /path/of/destination


https://github.com/luong-komorebi/Awesome-Linux-Software
https://github.com/trimstray/the-book-of-secret-knowledge
https://github.com/alebcay/awesome-shell


- [temp](./temp.md)
