#!/bin/bash

# -----------------------------------------------------------------------------
# Script to add acer_wmi to the blacklist on Linux systems (Acer laptops).

# License: MIT License

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
# copies of the Software, and to permit persons to whom the Software is
# provided to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

# github.com/Filipe-UEM
# -----------------------------------------------------------------------------

if [ -f /etc/modprobe.d/blacklist.conf ]; then
    echo "The file /etc/modprobe.d/blacklist.conf already exists."
else
    echo "The file /etc/modprobe.d/blacklist.conf does not exist. Creating it..."
    sudo touch /etc/modprobe.d/blacklist.conf
    echo "File /etc/modprobe.d/blacklist.conf created."
fi

echo "blacklist acer_wmi" | sudo tee -a /etc/modprobe.d/blacklist.conf > /dev/null
echo "The acer_wmi module has been successfully added to the blacklist."

echo "Reloading GRUB configuration..."
sudo update-grub

echo "The system will be rebooted to apply the changes."
sudo reboot