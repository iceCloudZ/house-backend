echo '开始编译'
cd dist/
/root/nvm/versions/node/v12.13.0/bin/npm run build:prod
cd ..
echo '编译结束'

echo '开始推送至coding'
\cp -rf dist/* coding_dist/
cd coding_dist/
git add .
git commit -m 'update'
git push -u origin master
echo '推送结束'
cd ..