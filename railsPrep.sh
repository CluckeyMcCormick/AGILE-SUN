# Use this once you've first pulled the repository;
# It installs the gems and other things you'll need.

cd CI_FINDER
rake db:create
rake db:migrate
bundle install
rails g simple_form:install --bootstrap
bundle install
