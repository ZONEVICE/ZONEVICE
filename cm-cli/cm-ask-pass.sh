export cmvault="name-of-vault"
export cmvaultmounted="open-name-of-vault"
cryptomator-cli unlock --password:stdin --mountPoint="$(pwd)/$cmvaultmounted" --mounter=org.cryptomator.frontend.fuse.mount.LinuxFuseMountProvider "$(pwd)/$cmvault"
