#!/bin/bash

git config --global user.name "$USER_NAME"
git config --global user.email "$USER_EMAIL"

ls -al

git stash
git remote rm origin
git remote add origin https://maciejmalecki:"$GITHUB_TOKEN"@github.com/c64lib/user-manual.git
git checkout gh-pages
git pull origin gh-pages

ls -al

find . -maxdepth 1 ! -name 'out' ! -name '.git' ! -name '.gitignore' ! -name '.circleci' -exec rm -rf {} \;
mv out/* .
rm -R out/

ls -al

git add -fA
git commit --allow-empty -m "$(git log master -1 --pretty=%B)"
git push -f origin gh-pages

echo "deployed successfully"
