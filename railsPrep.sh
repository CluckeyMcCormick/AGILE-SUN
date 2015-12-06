# Use this once you've first pulled the repository;
# It installs the gems and other things you'll need.

echo "Running railsPrep.sh; this preps the project to be run locally."

echo "~~~~~~~ cd CI_FINDER"
cd CI_FINDER
echo "~~~~~~~ bundle install"
bundle install
echo "~~~~~~~ rails g simple_form:install --bootstrap"
rails g simple_form:install --bootstrap
echo "~~~~~~~ bundle install"
bundle install
echo "~~~~~~~ rake db:create:all"
rake db:create:all
echo "~~~~~~~ rake db:migrate"
rake db:migrate