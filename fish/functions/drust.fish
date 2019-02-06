function drust
  docker run -it --rm -e USER=$USER -v "$PWD:/usr/src/" -w /usr/src/ rust:1.32 bash
end
