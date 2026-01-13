# Start TLP settings

`sudo tlp start`

# See stats

`sudo tlp-stat -p`

# See CPUs frequency

`awk -F': ' '/cpu MHz/{print $2}' /proc/cpuinfo`
