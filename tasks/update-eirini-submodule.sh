#!/bin/bash


commit(){
  cp -a repo/. repo-updated
  pushd repo-updated

   if git status --porcelain | grep .; then
      echo "Repo is dirty"
      git add .
      git config --global user.email "TODO"
      git config --global user.name "Mr.Concourse"
      git commit -am "[Concourse]: MESSAGE"
  else
      echo "Repo is clean"
  fi
}

main(){
  echo "todo"
}
