function dashmig
  cd /vidyard/VidyardDashboard/
  docker-compose -f docker-compose.images.yml run --rm web bin/rake db:migrate
  cd -
end

