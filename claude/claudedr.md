File name: `claudedr`

Alias for `claude --resume --dangerously-skip-permissions` in the current directory.

```bash
claude --resume --dangerously-skip-permissions
```

---

Permissions (`555` = read + execute):
```bash
sudo chmod 555 /usr/local/bin/claudedr
```

Location of the file: `/usr/local/bin/`

---

Setup script (creates the file with its content and sets permissions):

Note: requires sudo

```bash
#!/bin/bash
set -e

cat > /usr/local/bin/claudedr <<'EOF'
#!/bin/bash
claude --resume --dangerously-skip-permissions
EOF

sudo chmod 555 /usr/local/bin/claudedr
```
