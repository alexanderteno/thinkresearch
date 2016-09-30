ruby bin\bundle install
psql -U postgres -f db_create.sql
ruby bin/rails db:migrate