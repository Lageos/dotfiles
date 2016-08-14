## tmux cheat sheet

* tmux list-sessions
* tmux attach -t name
* create new sesstion with name: tmux new-session -s name
* reload with: tmux source-file ~/.tmux.conf
* attach to exiting with: tmux attach
  or tmux attach-session -t name

<prefix> ctrl + b

<prefix> + c => create window
<prefix> + w => change window
<prefix> + s => change session
<prefix> + <num> => change window
<prefix> + , => rename window
<prefix> + f => find window
<prefix> + l => change to last opened window
<prefix> + d => detach (session still running)
<prefix> + & => kill window
<prefix> + ? => show all keybindings
<prefix> + $ => rename session

# panes
<prefix> + % => vertical split pane
<prefix> + o => change pane (vim: ctrl + w, w)
<prefix> + arrow => change pane (vim: ctrl + w, arrow)
<prefix> + x => kill pane
<prefix> + " => horizontal split pane
<prefix> + z => zoom pane (again to undo)

# ssh
* ssh into remote machine
* start tmux session e.g. tmux new-session -s MyServer
* ...
* exit by closing terminal
* reatach via ssh: ssh user@host -t -- 'tmux attach'
