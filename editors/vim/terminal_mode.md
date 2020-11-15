# terminal mode
You can interact with programs that run inside the built-in terminal emulator

:te
:terminal : opens a terminal buffer running a shell
You start with Normal mode
Pressing i/I/a/A, etc takes you to Terminal mode
<C-\><C-n> : switches back to Normal mode
There is no Normal mode in terminal buffers


:terminal cat /etc/shells
(similar to :read !<cmd>)


To stop a running process in terminal buffer, go to insert mode, then press <C-c>

If you delete a terminal buffer, then the process running within that buffer will be stopped.

:5bwipeout! (deletes buffer number 5)

If you quit nvim, any processes running in the terminal buffers will be shut down.
<C-z> suspends nvim and also all processes running in terminal buffers. When nvim resumes, processes also resume.


:split | terminal : opens terminal buffer in horizontal split
:vsplit | terminal {cmd}
:tabedit | terminal {cmd}
In Ex commands, the | character behaves as a command separator (so its like firing two commands: :split then :terminal)


$ nvim +terminal : starts Neovim in terminal buffer

:echo b:terminal_job_id : gets you job id for terminal buffer
:call jobsend(<job_id>, "\<C-c>npm run server\<CR>")   "jobsend() function allows you to write to the stdin of a process running in a terminal buffer. It accepts two arguments: {job} and {data} to be sent.



## Avoid running nvim inside nvim.
- neovim-remote
$ nvr file.txt
Running above command in terminal buffers opens the file as if :edit was used

nvr <file: open file in current window
nvr -l <file: opens in last active window
nvr -o <file> [<file> ...] : opens via :split
nvr -O <file> [<file> ...] : opens via :vsplit
nvr -p <file> [<file> ...] : opens via :tabedit



