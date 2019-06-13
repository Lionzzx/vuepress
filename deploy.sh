#!/usr/bin/env sh

set -e

npm run docs:build

cd docs/.vuepress/dist


git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:Lionzzx/vuepress.git master:gh-pages

cd -