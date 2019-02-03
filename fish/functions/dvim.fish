function dvim
  docker run -it -v (pwd):/root/src dvim /usr/bin/fish -c "cd /src; nvim $argv"
end
