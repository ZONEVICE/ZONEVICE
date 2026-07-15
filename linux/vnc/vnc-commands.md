# x11vnc — Useful flags

| Flag                           | Purpose                                                                                       |
| ------------------------------ | --------------------------------------------------------------------------------------------- |
| `-display :0`                  | Selects the X display to connect to (usually `:0`).                                            |
| `-auth /home/v/.Xauthority`    | Path to the X authorization file. Required to access another user's/session's display.         |
| `-auth guess`                  | Tries to auto-detect the correct `.Xauthority`. Useful in systemd services.                    |
| `-forever` (`-many`)           | Does not exit when the client disconnects; keeps listening for new connections.                |
| `-loop`                        | Restarts x11vnc if the process dies (e.g. when the X server restarts).                         |
| `-shared`                      | Allows several clients to be connected at the same time.                                       |
| `-bg`                          | Runs in the background as a daemon.                                                            |
| `-rfbauth /home/v/.vnc/passwd` | Requires a password. Create it with `x11vnc -storepasswd`.                                     |
| `-rfbport 5900`                | Sets the listening port (5900 by default).                                                     |
| `-noxdamage`                   | Disables the XDAMAGE extension. Fixes artifacts and stale areas that don't refresh on Cinnamon/Mint. |
| `-repeat`                      | Enables key repeat for held-down keys.                                                         |
| `-nap`                         | Reduces CPU usage when there is little screen activity.                                        |
| `-localhost`                   | Accepts connections only from the local machine (use with an SSH tunnel).                      |
| `-ncache 10`                   | Enables client-side caching to improve performance.                                            |
| `-quiet`                       | Reduces console output.                                                                        |

## Recommended command

```bash
x11vnc -display :0 -auth /home/v/.Xauthority -forever -loop -shared -bg \
       -rfbauth /home/v/.vnc/passwd -noxdamage
```

## Notes

- `-forever` fixes the problem of the process stopping when the client disconnects.
- Without `-shared`, a new connection kicks out the previous one.
- Without `-rfbauth`, anyone on the network can take control of the desktop.
- For secure remote access: use `-localhost` + an SSH tunnel (`ssh -L 5900:localhost:5900 user@host`).
- For automatic startup: a systemd service or Cinnamon's Startup Applications.

## Personal VICE's favorite command

x11vnc -display :0 -auth /home/v/.Xauthority -forever -shared
