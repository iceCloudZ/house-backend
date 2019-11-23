echo '开始编译'
cd dist/
nvm use --lts
npm run build:prod
echo '编译结束'

echo '开始推送至coding'
git add .
git commit -m 'update'
git push -u origin master
echo '推送结束'
cd ..