#!/bin/sh

BRANCH_NAME=$(git symbolic-ref --short HEAD) # 現在のブランチ名を取得

if [ "$BRANCH_NAME" = "main" ]; then # mainブランチ名の時処理を終了
  echo "You cannot commit directly to the main branch."
  exit 1
fi

exit 0
