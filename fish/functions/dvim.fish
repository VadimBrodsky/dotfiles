function dvim
  docker run -it -v (pwd):/root/src dvim:1 /usr/bin/fish -c "cd src; nvim $argv"
end
