# Install server.
sudo apt install x11vnc

# Set a password.
x11vnc -storepasswd

# Start the VNC Server. Default port: 5900.
x11vnc -display :0 -auth /home/v/.Xauthority
