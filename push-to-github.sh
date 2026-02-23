#!/bin/bash
# Push all portfolio projects to GitHub
# 
# BEFORE RUNNING:
# 1. Replace YOUR_GITHUB_USERNAME below with your actual GitHub username
# 2. Create these 5 empty repos on GitHub: github.com/new
#    - simple-shell
#    - task-manager
#    - graph-optimizer
#    - ml-interpretability
#    - cs-portfolio
# 3. Make sure you're logged in (git credential or SSH key)

# Pass username as argument to override: ./push-to-github.sh otherusername
GITHUB_USER="${1:-stawakal}"

if [ -z "$GITHUB_USER" ]; then
  echo "Usage: ./push-to-github.sh [GITHUB_USERNAME]"
  exit 1
fi

BASE="/Users/shahedatawakalyar/cs-portfolio"

# Simple Shell
echo "=== simple-shell ==="
cd "$BASE/projects/simple-shell"
git init 2>/dev/null || true
git add .
git commit -m "Initial commit: Unix shell with piping" 2>/dev/null || git status
git branch -M main
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$GITHUB_USER/simple-shell.git"
git push -u origin main

# Task Manager
echo "=== task-manager ==="
cd "$BASE/projects/task-manager"
git init 2>/dev/null || true
git add .
git commit -m "Initial commit: Full-stack task manager" 2>/dev/null || git status
git branch -M main
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$GITHUB_USER/task-manager.git"
git push -u origin main

# Graph Optimizer
echo "=== graph-optimizer ==="
cd "$BASE/projects/graph-optimizer"
git init 2>/dev/null || true
git add .
git commit -m "Initial commit: Graph traversal optimizer" 2>/dev/null || git status
git branch -M main
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$GITHUB_USER/graph-optimizer.git"
git push -u origin main

# ML Interpretability
echo "=== ml-interpretability ==="
cd "$BASE/projects/ml-interpretability"
git init 2>/dev/null || true
git add .
git commit -m "Initial commit: ML interpretability pipeline" 2>/dev/null || git status
git branch -M main
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$GITHUB_USER/ml-interpretability.git"
git push -u origin main

# Main portfolio
echo "=== cs-portfolio ==="
cd "$BASE"
git init 2>/dev/null || true
git add .
git commit -m "Initial commit: CS portfolio" 2>/dev/null || git status
git branch -M main
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$GITHUB_USER/cs-portfolio.git"
git push -u origin main

echo ""
echo "Done! All projects pushed to GitHub."
