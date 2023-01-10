#!/usr/bin/env sh
protected_branch='main'
current_branch=$(git symbolic-ref HEAD | sed -e 's,.*/\\(.*\\),\\1,')

if [$protected_branch=$current_branch]; then
  echo "Cannot push to $protected_branch directly. please see your repo's branch protection rules."
  exit 1
else
  exit 0
fi