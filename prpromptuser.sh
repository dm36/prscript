rm -rf hello-world
git clone https://github.com/dm36/hello-world.git
cd hello-world
git checkout -b $1
echo "{
  \"title\": \"Amazing new feature\",
  \"body\": \"Please pull this in!\",
  \"head\": \"$1\",
  \"base\": \"master\"
}" >> new_file.txt
git add new_file.txt
git commit -am "swag"
git push --set-upstream origin $1 
curl -u "dm36" -X POST -d @new_file.txt https://api.github.com/repos/dm36/hello-world/pulls --header "Content-Type:application/json"
