```
git reset --hard HEAD
git clean -fd
```

What each one does:

git reset --hard HEAD — discards changes in already-tracked files (modifications, deletions, staged changes) and returns them to the state of the last commit.
git clean -fd — removes new files and folders that are not tracked by Git (-f forces the deletion, -d includes directories).
