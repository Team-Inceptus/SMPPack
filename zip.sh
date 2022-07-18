git config user.name github-actions[bot]
git config user.email 41898282+github-actions[bot]@users.noreply.github.com
git fetch origin download
git checkout download

shopt -s extglob
rm -rf !(SMPPack.zip)
HASH=$(sha1sum pack.png | cut -d ' ' -f 1)
echo "$HASH" > SMPPack.zip.sha1

git add ./

git branch -D download
git branch -m download
git commit -m "Update Resource Pack ($1)" -a
git push -f origin download