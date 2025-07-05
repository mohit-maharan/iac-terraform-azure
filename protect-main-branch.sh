#!/bin/bash

# Replace with your GitHub username and repo name
USERNAME="mohit-maharan"
REPO="todo-app"
BRANCH="main"

echo "⏳ Applying branch protection rules on $BRANCH branch of $USERNAME/$REPO..."

gh api   -X PUT   /repos/$USERNAME/$REPO/branches/$BRANCH/protection   -H "Accept: application/vnd.github+json"   -f required_status_checks.strict=true   -f required_status_checks.contexts[]=build   -f enforce_admins=true   -f required_pull_request_reviews.dismiss_stale_reviews=true   -f required_pull_request_reviews.required_approving_review_count=1   -f restrictions=null

echo "✅ Branch protection rules applied successfully!"
