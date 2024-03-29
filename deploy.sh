#!/usr/bin/env sh

# остановить публикацию при ошибках
set -e

# сборка
npm run build

# переход в каталог сборки
cd dist

# если вы публикуете на пользовательский домен
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# если вы публикуете по адресу https://<USERNAME>.github.io
# git push -f git@github.com:Indy660/Indy660.github.io.git Indy

# если вы публикуете по адресу https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:Indy660/mini_twitter.git master:gh-pages

cd -

cd -