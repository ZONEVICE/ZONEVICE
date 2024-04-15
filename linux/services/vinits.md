Location: `/etc/systemd/system/vinits.service`

```ini
[Unit]

Description=Apps initiations.

# Run script when Internet connection is up.
After=network.target

[Service]
User=root
ExecStart=node /home/v/apps/inits.js
Type=simple
RemainAfterExit=yes
Restart=on-failure

[Install]
WantedBy=multi-user.target
```