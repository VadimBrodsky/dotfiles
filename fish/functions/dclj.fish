function dclj
  docker run -it --rm --name clojure -e USER=$USER -v "$PWD:/usr/src/" -w /usr/src/ clojure:openjdk-8-lein-alpine sh
end
