# Ignore file mode changes in git

To prevent git from showing diffs like `old mode 100644 / new mode 100755` (execution permission changes), run:

```bash
# For one repository only:
git config core.fileMode false

# Globally repositories:
git config --global core.fileMode false
```
