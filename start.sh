#!/bin/bash
apt-get update
apt-get install -y xfce4 xfce4-goodies tightvncserver
mkdir -p ~/.vnc
echo "startxfce4 &" > ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
vncserver :1 -geometry 1280x800 -depth 24 -dpi 96
tail -f /dev/null
