# Tmux - Terminal multiplexer

Command key bindings are prefixed by <PREFIX>
Default prefix: C-b

- configuration: ~/.tmux.conf
- reload config: PREFIX r
- list available commands
  - PREFIX ?
- command mode
  PREFIX :

## Windows
- Create new window
  - new-window
  - PREFIX c
  - new-widnow -d            (create but do not make current)

- Rename window
  - PREFIX ,
  - tmux rename-window

- Exit window
  - PREFIX &

- moving to windows
  - PREFIX n/p         next/previous window
  - PREFIX 1-9         switch to window 1, ..., 9, 0
  - PREFIX l           got to last used window
  - PREFIX f           Search for window name
  - PREFIX w           Select from interactive list of windows
  - tmux  select-window -t :0-9


## Panes
- create pane
  - PREFIX %             (vertically split a window)
  - PREFIX "             (horizontally split window)
  - tmux split-window
  - tmux split-window -h

- moving to panes
  - PREFIX <arrow key>   (move in panes)
  - PREFIX o             (go to next pane, cycling through)
  - PREFIX ;             (go to previously used page)
  - PREFIX q             (show numeric values of pane)
  - PREFIX q 0-9         (got to pane number after query)

- Pane to window
  - PREFIX !

- pane zoom in/out
  - PREFIX z/Z

- exit pane
  - PREFIX x
  - exit
  - C-d

- Moving/resizing
  - PREFIX C-o           (switch panes) (move up)
  - PREFIX { or  }       (switch current pane with previous or next pane)
  - PREFIX C-<arrow>     (resize pane)
  - PREFIX <space>       (cycle through layouts: even-horizontal, even-vertical, main-horizontal, main-vertical, tiled)

- Window to pane
  - join-pane -s [session_name]:[window_number_to_join]
  - you can also use [session_name]:[window].[pane]

- open pane in current directory
  - split-window -v -c "#{pane_current_path}"

## Session
- starting a session
  - tmux
  - tmux new
  - tmux new-session
  - tmux new -s<sessionName>
  - tmux new -n<firstWindowName>
  - tmux new -As<sessionName>            (attach to existing session if it exists)
  - tmux new -Ds<sessionName>            (attach to existin gsession if it exists and detach other connected clients)
  - tmux new -s <sessionName> -d         (create session in background)

- detach from current session
  - PREFIX d
  - tmux-detach

- attach to existing sessions
  - tmux attach
  - tmux attach-session
  - tmux attach -t<sessionName>
  - tmux attach -dt<sessionName>          (detaches other clients connected to the session)

- list session
  - tmux ls
  - tmux list-sessions
  - PREFIX s                    (j/k to move up/down, SPACE to expand)

- kill session
  - :kill-server
  - tmux kill-session -t <sessionName>

- rename session
  - tmux rename-session -t 0 <sessionName>
  - PREFIX $                                         (rename current session)

- Switch between sessions:
  - tmux switch -t session_name
  - PREFIX ( or )          previous/next session
  - PREFIX L               ‘last’ (previously used) session

- Move window to session
  - PREFIX .
  - tmux move-window -s sessionName:windowNumber -t targetSession

- PREFIX:kill-session (to kill the current session)
- tmux kill-session -t target-session
- tmux kill-session -a (destroys all, except current one)
- tmux kill-session (kills last connected session, when run out of tmux)
- tmux kill-server (kills all sessions)

## Tmux window modes
- Default mode - permits direct access to the terminal attached to the window

## Copy Mode
Copy mode - you can navigate the buffer including scrolling the history
  - PREFIX [ : enters copy mode
  - Enter : get out of Copy mode
  - q (vi mode) or Esc (emacs mode) : exit copy mode
  - C-b/f : one page up/down
  - g/G : top/bottom of buffer's history
  - ?// : search upwards/downwards (then n/N to move to next/previous)
  - Copy : SPACE, move cursor, ENTER : puts selected text into paste buffer
  - Paste: PREFIX ]
  - :capture-pane: copies entire visible contents of a pane in paste buffer
  - tmux show-buffer: show content of paste buffer
  - tmux save-buffer file.txt : save buffer to a file
  - Tmux keeps stack of paste buffer
    - list-bufers
    - PREFIX ] : always pastes buffer 0
    - :choose-buffer : lists paste buffers, select an entry and press ENTER to insert text into selected pane
    - paste buffers are shared across all tmux sessions


## General
$ tmux swap-pane -[UDLR] (prefix + { or })
$ tmux select-pane -[UDLR]
$ tmux select-panle -t :.+
$ tmux source-file ~/.tmux.conf
$ prefix : (brings up command prompt)
  :source-file ~/.tmux.conf
- PREFIX t (show time)
- Any command can be executed as tmux something or C-a :something (or added to ~/.tmux.conf)


$ tmux list-key | grep C-h
$ tmux list-key | grep 'C-[hjkl]'


https://github.com/tmux/tmux/wiki/Getting-Started



## Tmux Resurrect
prefix + Ctrl-s - save
prefix + Ctrl-r - restore

https://github.com/tmux-plugins/tpm
https://github.com/tmux-plugins/tmux-resurrect
https://github.com/tmux-plugins/tmux-continuum
https://gist.github.com/andreyvit/2921703
* http://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/

