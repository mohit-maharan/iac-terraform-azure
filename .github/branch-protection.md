# 🔒 Branch Protection Rules – `main`

These rules are applied on the `main` branch to ensure safe and controlled collaboration.

## ✅ Enabled Rules

- ✅ Require Pull Request before merging
- ✅ Minimum 1 approval required
- ✅ Require passing status check: `build`
- ✅ Admins must follow these rules
- ❌ No force pushes allowed
- ❌ Cannot delete `main` branch

## 👥 Code Owner
- All PRs require approval from: `@mohit-maharan`

## ⚙️ Applied Using GitHub CLI

```bash
gh api -X PUT /repos/<username>/<repo>/branches/main/protection ...
```
