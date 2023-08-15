git checkout main
del .gitignore
copy .gitignore-github .gitignore
git pull github-origin main
git add *
git commit -am "-"
git push github-origin main
