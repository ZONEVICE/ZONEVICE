- `ps aux | grep processName`: gives names of processes.

- `pkill processName`: kills processes with the name coincidence in the regular expression given. For example, giving `fire` would stop `firefox` and `firebase`.

- `killall`: more strict in contrast to `pkill`. Giving `fire` would not close `firefox` since the name does not match.

- `pgrep processName`: shows only the PID of the process.

- `btop`: modern process viewer (kinda messy compared with htop).
