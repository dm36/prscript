git branch random3
git checkout random3
echo "{
  "title": "Amazing new feature",
  "body": "Please pull this in!",
  "head": "random3",
  "base": "master"
}" >> new_file.txt
git add new_file.txt
git commit -am "swag"
git push --set-upstream origin random3  
curl -u "dm36" -X POST -d @my-file.txt https://api.github.com/repos/dm36/hello-world/pulls --header "Content-Type:application/json"
