#!/bin/bash

set -e
PROJECT_NAME=$(basename "$PWD")

git init
git add .
git commit -m "Initial commit from Hamze's custom Rust template"

gh repo create "$PROJECT_NAME" \
  --private \
  --source=. \
  --remote=origin \
  --push

echo "✅ Repo '$PROJECT_NAME' created and pushed to GitHub." 