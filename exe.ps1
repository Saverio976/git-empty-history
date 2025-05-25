Remove-Item -Recurse -Force .git
$add = Read-Host 'url: '
git init
git remote add origin "$add"
git add empty.txt
git commit -m "Rewrite history"
git checkout -b main
git push --force --set-upstream origin main
