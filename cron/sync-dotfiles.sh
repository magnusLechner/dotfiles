#!/usr/bin/bash

# This script executes under following assumptions:
# The dotfiles are only locally modified and never remote
# Therefore there can never be changed from upstream and git pull will never fail

echo ">>> script to sync dotfiles started <<<"

# print current time
echo $(date)

# change into dotfiles repository directory
dotfiles_repo=~/git/dotfiles
cd $dotfiles_repo
echo "print working directory: $(pwd)"

# pull from remote branch and print result
git pull | echo

# copy local dotfiles into local git repository
cp ~/.vimrc $dotfiles_repo
cp ~/.tmux.conf $dotfiles_repo

# check if local git repo contains any changes
echo `git status -u`
if git status -u | grep -q "Changes not staged for commit:"; then
        echo "Changes detected. Trying to commit these changes to remote repository."
	
        # stash changes and commit them
	git add -A
	git commit -m "CRON: updated dotfiles" -m "For further information see 'crontab -e'. You can disable this cron job by writing '#' as first character of the line you want to disable (mark as comment)."
	
        # push the commited files
	echo `git push`
else
	echo "No changes to commit."
fi

# print current time
echo $(date)

echo ">>> script to sync dotfiles finished <<<"
