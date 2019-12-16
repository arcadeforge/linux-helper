repo=$1

test -z $repo && echo "Repo name required" 1>&2 && exit 1

echo "Creating repo $repo" 
echo "{\"name\":\"$repo\"}"
#curl -H "Authorization: token $TOKEN" -k -u 'arcadeforge' https://api.github.com/user/repos -d "{\"name:\"$repo\"}"
curl -k -u 'arcadeforge' https://api.github.com/user/repos -d "{\"name\":\"$repo\"}"

