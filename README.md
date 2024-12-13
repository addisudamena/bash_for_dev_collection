# Bash Productivity Hacks

A collection of reusable Bash functions and shortcuts to streamline your daily developer tasks, automate workflows, and supercharge your terminal efficiency. Perfect for simplifying Git, Docker, file management, and much more! 🚀

Read the full article on <a href="https://medium.com/p/ef52520a5c84"><img src="https://img.shields.io/badge/Medium-12100E?style=for-the-badge&logo=medium&logoColor=white" /></a>

---

## 📖 Table of Contents

- [Getting Started](#getting-started)
- [Available Functions](#available-functions)
- [How to Add Functions to Your `~/.bashrc`](#how-to-add-functions-to-your-bashrc)
- [Examples](#examples)
- [Contributing](#contributing)

---

## 💻 Getting Started

To start using these productivity hacks, simply copy the desired functions into your `~/.bashrc` file, reload it, and enjoy a smoother terminal experience.

### Steps to Add Functions:
1. Open your `~/.bashrc` file:
   ```bash
   nano ~/.bashrc
   ```
2. Copy and paste the desired functions into the file.
3. Save and reload:
   ```bash
   source ~/.bashrc
   ```
4. Use the new functions directly from your terminal!

---

## ⚙️ Available Functions

### 1. Quick Navigation
- `goto_workspace`: Quickly navigate to your workspace.
- `goto_project`: Navigate to a specific project folder using `goto_project <project_name>`.

### 2. Git Shortcuts
- `git_status_all`: Check the status of all Git repositories in a directory.
- `git_commit_push`: Stage, commit, and push changes with a single command.

### 3. Docker Utilities
- `docker_prune`: Clean up unused Docker resources.
- `docker_logs`: Follow logs for a specific container.
- `docker_restart`: Restart a Docker container.

### 4. File Management
- `find_file`: Search for a file by name.
- `find_code`: Search for specific code snippets across files.
- `extract`: Automatically extract any compressed file type.

### 5. Task Automation
- `run_tests`: Run your test suite.
- `build_project`: Build your project and display a motivational message.
- `deploy_app`: Automate the build and deployment process.

### 6. System Utilities
- `my_ip`: Fetch your public IP address.
- `free_memory`: Display available memory in a human-readable format.
- `update_system`: Update your system packages.
- `kill_port`: Free up a port that’s in use.

---

## 🛠️ Examples

Here are some practical examples to get you started:

### Quick Directory Navigation
```bash
goto_workspace() {
    cd ~/Documents/Workspace
}
```
**Usage:**
```bash
goto_workspace
```

### Git Commit and Push
```bash
git_commit_push() {
    git add .
    git commit -m "$1"
    git push origin $(git branch --show-current)
}
```
**Usage:**
```bash
git_commit_push "Your commit message"
```

### Clean Docker Containers
```bash
docker_prune() {
    docker system prune -af --volumes
}
```
**Usage:**
```bash
docker_prune
```

Explanation : href="https://medium.com/p/ef52520a5c84

---

## 🤝 Contributing

Want to add your own functions or improve existing ones? Contributions are welcome! Follow these steps:

1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature
   ```
3. Add your changes and commit:
   ```bash
   git commit -m "Add your feature description"
   ```
4. Push the changes and create a pull request.

---

## 🌟 Star This Repo

If you find these Bash hacks helpful, don’t forget to star this repo and share it with your fellow developers. Let’s make the terminal a fun and productive space! 🚀
