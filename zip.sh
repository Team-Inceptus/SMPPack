git config user.name github-actions[bot]
git config user.email 41898282+github-actions[bot]@users.noreply.github.com
git fetch origin zip
git checkout zip

git add ./

git branch -D zip
git branch -m zip
git commit -m "Update Resource Pack" -a
git push -f origin zip