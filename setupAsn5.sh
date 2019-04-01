#!/bin/bash

if [[ ! -d '.git' ]]
then
  echo "Run this in the *root* of your Git repository"
  exit -1
fi

if [[ -d 'asn5' ]]
then
  echo "asn5 directory already exists.  Aborting."
  exit -2
fi

(curl -Ls https://raw.githubusercontent.com/jeffshantz/cs3342-2019-asn5starter/master/asn5.tar.gz > ./asn5.tar.gz)

tar zxvf asn5.tar.gz
rm asn5.tar.gz

cat <<-EOF >>.gitignore
setupAsn5.sh
asn5/_build
EOF

cat <<-EOF
Your assignment 5 skeleton is now set up.

You should now commit and push your code:
-----------------------------------------
git add .
git commit -m "Initial asn5 commit"
git push

When you are ready to submit, commit, push, and tag your commit:
----------------------------------------------------------------
git add .
git commit -m "Final submission"
git push
git tag asn5
git push --tags

Good luck!
EOF
