function peek
  tmux split-window -p 33 "$EDITOR" $argv
end
