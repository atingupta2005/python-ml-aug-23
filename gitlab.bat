git checkout am1
del .gitignore
copy .gitignore-gitlab .gitignore
git pull gitlab-origin am1
git add *
git commit -am "-"
git push gitlab-origin am1
