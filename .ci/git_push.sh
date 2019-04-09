#!/bin/bash


set_cred() {
  git config --global user.name "staiyeba"
  git config --global user.email "staiyeba@gmail.com"
}

git_commit() {
  cd travisci-cache
  git add *.tar.gz
  git commit -m "Build number: $TRAVIS_BUILD_NUMBER"
}


git_push() {
  git remote add origin-ssh https://${GH_TOKEN}@github.com/travisci-cache.git
  git push --set-upstream origin-ssh master
}

set_cred
git_commit
git_push
