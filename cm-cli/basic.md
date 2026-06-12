# Check available mounters

```bash
cryptomator-cli list-mounters
```

# Basic example, asks password

```bash
cryptomator-cli unlock \
  --password:stdin \
  --mountPoint=/home/user/Desktop/test-mounted \
  --mounter=org.cryptomator.frontend.fuse.mount.LinuxFuseMountProvider \
  /home/user/Desktop/test
```

# One line

```bash
cryptomator-cli unlock --password:stdin --mountPoint=/home/user/Desktop/test-mounted --mounter=org.cryptomator.frontend.fuse.mount.LinuxFuseMountProvider /home/user/Desktop/test
```

# One line, unlock in same command call

```bash
export crypass="my-password" && cryptomator-cli unlock --password:env=crypass --mountPoint=/home/user/Desktop/test-mounted --mounter=org.cryptomator.frontend.fuse.mount.LinuxFuseMountProvider /home/user/Desktop/test
```
