#!/usr/bin/env bash
# ==============================================================================
# Shin254 GitHub Profile - Automated Push & Sync Helper
# ==============================================================================
set -e

cd /home/shin254

echo "🚀 Checking GitHub SSH connectivity..."
ssh -T git@github.com 2>&1 || true

echo "📦 Staging and committing changes..."
git add -A
if ! git diff-index --quiet HEAD --; then
  git commit -m "feat(profile): update README and system metrics ($(date '+%Y-%m-%d %H:%M:%S'))"
fi

echo "🌐 Pushing to GitHub (git@github.com:shin254/shin254.git)..."
git push -u origin main

echo "✅ Sync to https://github.com/shin254 completed successfully!"
