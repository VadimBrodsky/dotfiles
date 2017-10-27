function docker-cleanup
  docker rm  (docker ps --no-trunc -aqf status=exited)
  docker rmi (docker images --filter 'dangling=true' -q)
end
