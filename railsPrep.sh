cd CI_FINDER
rake db:create
rake db:migrate
bundle install
rails g simple_form:install --bootstrap
bundle install