IFS=$'\n'
releases=$(ectool getReleases "SubRelease Template" | grep releaseName | cut -d '>' -f 2 | cut -d '<' -f 1 | sort -u)

for release in $releases
do
  echo "[*] Deleteing Release: $release"
  ectool deleteRelease "SubRelease Template" "$release"
done