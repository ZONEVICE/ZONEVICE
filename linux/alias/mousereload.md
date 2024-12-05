File name: `mousereload`

Location: `/usr/local/bin/`

Code

```bash
sudo modprobe -r psmouse
sudo modprobe psmouse
```

Permissions

`sudo chmod 111 /usr/local/bin/mousereload`