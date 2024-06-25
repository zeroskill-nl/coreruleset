#/bin/bash
git remote add upstream https://github.com/coreruleset/coreruleset.git
git fetch upstream
git checkout main
git merge upstream/main
EXCLUDED_ITEMS=("rules/scanners-user-agents.data")
for item in "${EXCLUDED_ITEMS[@]}"; do
    git checkout HEAD@{1} -- "$item"
done
git push origin main
