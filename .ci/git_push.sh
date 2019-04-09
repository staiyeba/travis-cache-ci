#!/bin/bash


set_cred() {
  git config --global user.name "staiyeba"
  git config --global user.email "staiyeba@gmail.com"
  git config --global user.password "${GH_TOKEN}"
}

git_commit() {
  cd travisci-cache
  git add homebrew-cache.tar.gz
  git commit -m "Build number: $TRAVIS_BUILD_NUMBER"
}


git_push() {
  git remote add origin-upload https://${GH_TOKEN}@github.com/staiyeba/travisci-cache.git
  yes | git push --quiet --set-upstream origin-upload master
}

set_cred
git_commit
git_push
conan -h
