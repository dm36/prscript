rm -rf hello
git clone https://github.com/dm36/hello.git
cd hello
git checkout -b random7
echo "{
  \"title\": \"Amazing new feature\",
  \"body\": \"Please pull this in!\",
  \"head\": \"random7\",
  \"base\": \"master\"
}" >> new_file.txt
git add new_file.txt
git commit -am "swag"
git push -f origin random7
curl -u "dm36" -X POST -d @new_file.txt https://api.github.com/repos/dm36/hello-world/pulls --header "Content-Type: application/json"
