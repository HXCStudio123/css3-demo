#!/usr/bin/env sh
# 当编译错误时终止脚本
set -e

# 构建
npm run build

cd dist

# 部署到自定义域名

git init
git add -A
git commit -m "deploy"

# 部署到gitpage

git push -f git@github.com:HXCStudio123/css3-demo.git master:gh-pages

cd -