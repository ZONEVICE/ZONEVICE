File name: `clauded`

Alias for `claude --dangerously-skip-permissions` in the current directory.

```bash
claude --dangerously-skip-permissions
```

---

Permissions (`555` = read + execute):
```bash
sudo chmod 555 /usr/local/bin/clauded
```

Location of the file: `/usr/local/bin/`

---

Setup script (creates the file with its content and sets permissions):

Note: requires sudo

```bash
#!/bin/bash
set -e

cat > /usr/local/bin/clauded <<'EOF'
#!/bin/bash
claude --dangerously-skip-permissions
EOF

sudo chmod 555 /usr/local/bin/clauded
```
