# Use this once you've first pulled the repository;
# It installs the gems and other things you'll need.

echo "~~~~~~~ cd CI_FINDER"
cd CI_FINDER
echo "~~~~~~~ bundle install"
bundle install
echo "~~~~~~~ rails g simple_form:install --bootstrap"
rails g simple_form:install --bootstrap
echo "~~~~~~~ bundle install"
bundle install
echo "~~~~~~~ rake db:create"
rake db:create
echo "~~~~~~~ rake db:migrate"
rake db:migrate