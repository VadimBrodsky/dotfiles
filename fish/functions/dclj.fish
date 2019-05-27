function dclj
  docker run -it --rm --name clojure -e USER=$USER -p 3000:3000 -v "$PWD:/usr/src/" -w /usr/src/ clojure:openjdk-8-lein-alpine sh
end
