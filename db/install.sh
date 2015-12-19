# PostgreSQL

## Install on Fedora
sudo dnf install postgresql-server postgresql-contrib

## Start the PostgreSql server during boot
sudo systemctl enable postgresql

## Start PostgreSql as necessary
sudo systemctl start postgresql

## Init the database
sudo postgresql-setup initdb
