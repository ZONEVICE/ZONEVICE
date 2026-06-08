# Avoid fresh to open on closed sessions

## Open clean fresh in current `pwd`

```bash
fresh --no-restore
```

## Never open fresh in previous sessions permanently

```bash
nano ~/.config/fresh/config.json
```

Add `"restore_previous_session": false`

```json
{
  "theme": "dark",
  "editor": {
    "auto_indent": false,
    "restore_previous_session": false
  }
}
```

# Remove old session's data

| Folder                                   | What it is                                                                                                                 | Delete?            |
| ---------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | ------------------ |
| `workspaces/`                            | Per-directory layout (tabs, splits, cursor position) — this is what was being restored and opening in a different location | ✅ Yes             |
| `sessions/`                              | Named/saved sessions per directory                                                                                         | ✅ Yes             |
| `recovery/`                              | Hot-exit backups; now only contains `session.lock`                                                                         | ✅ Optional (safe) |
| `terminals/`                             | Persisted integrated terminals                                                                                             | ✅ Optional        |
| `file_states/`                           | Per-file remembered cursor position (cosmetic)                                                                             | ⚠️ Optional        |
| `orchestrator/`, `fresh/telemetry_stamp` | Internal state / telemetry                                                                                                 | ❌ Do not touch    |
| `~/.config/fresh/`                       | Your configuration (where you applied the fix)                                                                             | ❌ Do not touch    |

```bash
rm -rf ~/.local/share/fresh/{workspaces,sessions,recovery,terminals,file_states}/*
```
