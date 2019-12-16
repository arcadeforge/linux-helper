user=$1
repo=$2

test -z $user && echo "User name required" 1>&2 && exit 1
test -z $repo && echo "Repo name required" 1>&2 && exit 1

echo "creating remote repos"

curl -k -u "$user" https://api.github.com/user/repos -d "{\"name\":\"$repo\"}"

#git clone git://github.com/arcadeforge/$repo
git init
git add *
git commit -m "release"
git remote add origin git@github.com:$user/$repo.git
#git remote set-url origin git@github.com:$user/$repo.git
git push -u origin master
