ruby bin\bundle install
ruby bin/rails db:create
ruby bin/rails db:migrate
ruby bin/rails db:migrate RAILS_ENV=test