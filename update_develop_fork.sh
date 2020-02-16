#!/usr/bin/env bash
# Merges the master branch into all other branches                 #
# Assumes that the git repository has upstream and remote urls set #
# Assumes that you've committed your work on your current branch   #
#                                                                  #
#                                                                  #

# Returns the names of all the local branches
local_branches() {
  git for-each-ref --format="%(refname:short)" refs/heads
}

# Returns the name of the current branch
current_branch() {
  git symbolic-ref --short HEAD
}

# Fetch from upstream
git fetch --all


#Check out your fork's local master branch.
git checkout develop

# Merge the changes from upstream/develop into your local develop branch.
# This brings your fork's develop branch into sync with the upstream repository, without losing your local changes.
git merge upstream/develop


git push origin develop # origin

# Update all local branch with develop
# WARNING. This could fail
[[ "${saved_branch}" != "develop" ]] && git checkout "develop"
git pull

for branch in $(local_branches); do
  if [[ "${branch}" != "develop" ]]; then
    echo
    git checkout "${branch}"
    git merge "develop"
    git push origin "${branch}"
  fi
done

echo
[[ "${saved_branch}" != "$(current_branch)" ]] && git checkout "${saved_branch}"