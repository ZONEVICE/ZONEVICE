File name: `aptl`

Update and list upgradable.

```bash
sudo apt update && apt list --upgradable
```

---

File name: `aptu`

Upgrade packages.

```bash
sudo apt update && sudo apt upgrade -y
```

---

File name: `aptll`

List upgradable packages (requires `apt update | aptl` first)

```bash
apt list --upgradable
````

---

Permissions in all the files (`555` = read + execute):
```bash
sudo chmod 555 /usr/local/bin/aptl
sudo chmod 555 /usr/local/bin/aptu
sudo chmod 555 /usr/local/bin/aptll
````

Location of all the files: `/usr/local/bin/`

---

Setup script (creates the 3 files with their content and sets permissions):

Note: requires sudo

```bash
#!/bin/bash
set -e

cat > /usr/local/bin/aptl <<'EOF'
#!/bin/bash
sudo apt update && sudo apt list --upgradable
EOF

cat > /usr/local/bin/aptu <<'EOF'
#!/bin/bash
sudo apt update && sudo apt upgrade -y
EOF

cat > /usr/local/bin/aptll <<'EOF'
#!/bin/bash
apt list --upgradable
EOF

sudo chmod 555 /usr/local/bin/aptl
sudo chmod 555 /usr/local/bin/aptu
sudo chmod 555 /usr/local/bin/aptll
```
