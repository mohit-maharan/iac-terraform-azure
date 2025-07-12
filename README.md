# 🔐 GitHub Branch Protection Template12

This repository contains a ready-to-use automation script and configuration for applying **branch protection rules** on GitHub using the CLI.

## 🔧 What It Does

- Applies branch protection rules to the `main` branch
- Requires PR review, status checks, disables force push/deletion
- Adds CODEOWNERS to require review by specific users

## 📂 Files Included

- `.github/CODEOWNERS` → All PRs need `@mohit-maharan` approval
- `.github/branch-protection.md` → Rule documentation
- `protect-main-branch.sh` → Automation script using `gh`

## 🚀 Usage

1. Install GitHub CLI: `winget install --id GitHub.cli`
2. Login: `gh auth login`
3. Run the script:

```bash
bash protect-main-branch.sh
```


