#!/bin/bash

# Stage all passed arguments to commit
git add "$@"

# Prompt User for commit message
echo "Please Enter Commit Message"
read message

# Commit and Push
git commit -m "$message" $@ 
git push
