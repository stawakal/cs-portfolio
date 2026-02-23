# Push Projects to GitHub

Follow these steps to add your projects to GitHub. **Replace `YOUR_GITHUB_USERNAME`** with your actual GitHub username.

## Step 1: Create Repos on GitHub

1. Go to [github.com/new](https://github.com/new)
2. Create **4 new repositories** (leave them empty, no README):
   - `simple-shell`
   - `task-manager`
   - `graph-optimizer`
   - `ml-interpretability`

## Step 2: Push Each Project

Open Terminal and run these commands. Replace `YOUR_GITHUB_USERNAME` with your username.

### Simple Shell
```bash
cd /Users/shahedatawakalyar/cs-portfolio/projects/simple-shell
git init
git add .
git commit -m "Initial commit: Unix shell with piping"
git branch -M main
git remote add origin https://github.com/YOUR_GITHUB_USERNAME/simple-shell.git
git push -u origin main
```

### Task Manager
```bash
cd /Users/shahedatawakalyar/cs-portfolio/projects/task-manager
git init
git add .
git commit -m "Initial commit: Full-stack task manager"
git branch -M main
git remote add origin https://github.com/YOUR_GITHUB_USERNAME/task-manager.git
git push -u origin main
```

### Graph Optimizer
```bash
cd /Users/shahedatawakalyar/cs-portfolio/projects/graph-optimizer
git init
git add .
git commit -m "Initial commit: Graph traversal optimizer"
git branch -M main
git remote add origin https://github.com/YOUR_GITHUB_USERNAME/graph-optimizer.git
git push -u origin main
```

### ML Interpretability
```bash
cd /Users/shahedatawakalyar/cs-portfolio/projects/ml-interpretability
git init
git add .
git commit -m "Initial commit: ML interpretability pipeline"
git branch -M main
git remote add origin https://github.com/YOUR_GITHUB_USERNAME/ml-interpretability.git
git push -u origin main
```

### Portfolio (main site)
```bash
cd /Users/shahedatawakalyar/cs-portfolio
git init
git add .
git commit -m "Initial commit: CS portfolio"
git branch -M main
git remote add origin https://github.com/YOUR_GITHUB_USERNAME/cs-portfolio.git
git push -u origin main
```

## Step 3: Update Portfolio Links

After pushing, edit `index.html` and replace `YOUR_GITHUB_USERNAME` in the project links with your real GitHub username. The links are in the "View on GitHub" buttons.

## Authentication

If `git push` asks for credentials:
- **HTTPS**: Use a [Personal Access Token](https://github.com/settings/tokens) instead of your password
- **SSH**: Use `git@github.com:YOUR_GITHUB_USERNAME/repo-name.git` as the remote URL if you have SSH keys set up
