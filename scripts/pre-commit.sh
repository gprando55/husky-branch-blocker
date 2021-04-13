#!/bin/bash

BRANCH=`git rev-parse --abbrev-ref HEAD`
BLOCK_BRANCHS=("master" "develop")

echo -e "\n>> On branch $BRANCH"
for i in "${BLOCK_BRANCHS[@]}"; 
do 
  if [ "$i" = "$BRANCH" ];
  then
    echo -e "\n ❌  ❌  ❌  ❌\tCannot commit to branch ⚠️  ⚠️\t$BRANCH\t⚠️  ⚠️,
    please create your own branch and use PR.\t❌  ❌  ❌  ❌ \n" && exit 1
  fi 
done

echo -e "\n ✔️  ✔️  ✔️  ✔️\tYou must use (git push origin $BRANCH).\t✔️  ✔️  ✔️  ✔️ \n"

exit 0