function docker-backup
  docker exec mysql /usr/bin/mysqldump -u root --all-databases | gzip -9 > ~/Dropbox/Documents/DB\ Backups/(date +%F)-backup.sql.gz
end
