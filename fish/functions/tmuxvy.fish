function tmuxvy
  tmux new-session -s vy -n docker -d
  tmux split-window -v -t vy
  tmux split-window -v -t vy
  tmux select-layout even-horizontal

  tmux select-pane -t 1
  tmux send-keys -t vy 'cd /vidyard/DevTools' C-m
  tmux send-keys -t vy 'git pull' C-m
  tmux send-keys -t vy './start.dev'

  tmux split-window -v -t vy
  tmux select-pane -t 1
  tmux split-window -v -t vy

  tmux send-keys -t vy 'cd /vidyard/VidyardDashboard' C-m
  tmux send-keys -t vy 'git pull' C-m
  tmux send-keys -t vy './start.image'

  tmux select-pane -t 3
  tmux send-keys -t vy 'cd /vidyard/Multipass' C-m
  tmux send-keys -t vy 'git pull' C-m
  tmux send-keys -t vy './start.u'

  tmux select-pane -t 4
  tmux send-keys -t vy 'ctop' C-m
  tmux split-window -v -t vy

  tmux send-keys -t vy 'cd /vidyard/Guardtower' C-m
  tmux send-keys -t vy './start.dev'

  tmux new-window -n editor -t vy
  tmux send-keys -t vy 'cd /vidyard' C-m
  tmux select-window -t 1

  tmux attach -t vy
end
