#!/usr/bin/env bash
#
# One-time setup: create the GitHub org/repo and push this folder.
#
# Run this ONCE from your Mac terminal, in this folder:
#   cd "/Users/jaynathan/projects/cco-podcast-producer/CCO Podcast"
#   bash setup.sh
#
# Requires: gh CLI installed and authenticated (gh auth status should pass).
# Note: GitHub orgs are created via the web UI, not gh CLI.
# Before running, create the org at https://github.com/account/organizations/new (Free plan is fine),
# then set ORG_NAME below to that org's slug.

set -euo pipefail

# ===== EDIT THESE =====
ORG_NAME="cco-podcast"          # The GitHub org you created
REPO_NAME="cco-podcast"         # The repo name within the org
JEFF_GITHUB_HANDLE=""           # Jeff's GitHub username (leave blank to skip collaborator step)
# ======================

echo "==> Checking gh CLI auth..."
gh auth status >/dev/null 2>&1 || {
  echo "gh is not authenticated. Run: gh auth login"
  exit 1
}

echo "==> Checking that org '$ORG_NAME' exists..."
if ! gh api "orgs/$ORG_NAME" >/dev/null 2>&1; then
  echo "Org '$ORG_NAME' not found on your gh account."
  echo "Create it first at: https://github.com/account/organizations/new"
  echo "Then re-run this script."
  exit 1
fi

echo "==> Initializing local git repo..."
if [ ! -d .git ]; then
  git init -b main
  git add -A
  git commit -m "Initial commit: producer setup, transcripts, weekly prompt"
else
  echo "    (already a git repo, skipping init)"
fi

echo "==> Creating private repo '$ORG_NAME/$REPO_NAME' on GitHub..."
if ! gh repo view "$ORG_NAME/$REPO_NAME" >/dev/null 2>&1; then
  gh repo create "$ORG_NAME/$REPO_NAME" --private --source=. --remote=origin --push
else
  echo "    (repo already exists)"
  if ! git remote get-url origin >/dev/null 2>&1; then
    git remote add origin "https://github.com/$ORG_NAME/$REPO_NAME.git"
  fi
  git push -u origin main
fi

if [ -n "$JEFF_GITHUB_HANDLE" ]; then
  echo "==> Inviting $JEFF_GITHUB_HANDLE as a collaborator with maintain access..."
  gh api --method PUT \
    "repos/$ORG_NAME/$REPO_NAME/collaborators/$JEFF_GITHUB_HANDLE" \
    -f permission=maintain >/dev/null
  echo "    Invitation sent. Jeff will get a GitHub email."
fi

echo ""
echo "Done. Repo lives at: https://github.com/$ORG_NAME/$REPO_NAME"
echo ""
echo "From now on, every weekly brief run will auto-commit and push."
echo "You can also edit next_episode.md directly on github.com or locally; commit and push as you like."
