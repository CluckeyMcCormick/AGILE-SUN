echo "Running herokuPush.sh; this pushes the project to heroku."

echo "~~~~~~~ cd CI_FINDER"
cd CI_FINDER
echo "~~~~~~~ git push heroku master"
git push heroku master

echo "If you made any modifications to the structure of the database, make sure to run"
echo "============-> heroku run rake db:migrate <-============"
echo "while inside the CI_FINDER folder"