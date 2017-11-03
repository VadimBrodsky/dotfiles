function dashmig
  cd /vidyard/VidyardDashboard/
  docker-compose run --rm web bin/rake db:migrate
  cd -
end

