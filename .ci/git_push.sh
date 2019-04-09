#!/bin/bash


set_cred() {
  git config --global user.name "staiyeba"
  git config --global user.email "staiyeba@gmail.com"
  git config --global user.password "${GH_TOKEN}"
}

git_commit() {
  cd travisci-cache
  git add *.tar.gz
  git commit -m "Build number: $TRAVIS_BUILD_NUMBER"
}


git_push() {
#  git remote add origin https://github.com/staiyeba/travisci-cache.git
  git push origin master
}

set_cred
git_commit
git_push
conan -h
