rm -rf hello-world
git clone https://github.com/dm36/hello-world.git
cd hello-world
git checkout -b sweg14
echo "{
  \"title\": \"Amazing new feature\",
  \"body\": \"Please pull this in!\",
  \"head\": \"sweg14\",
  \"base\": \"master\"
}" >> new_file.txt
git add new_file.txt
git commit -am "swag"
git push --set-upstream origin sweg14
curl -u "dm36" -X POST -d @new_file.txt https://api.github.com/repos/dm36/hello-world/pulls --header "Content-Type:application/json"
