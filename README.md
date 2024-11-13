
# disable-acer-wmi

This repository contains a simple Bash script that disables the `acer_wmi` module on Acer laptops, which resolves issues related to Wi-Fi hard block. This problem is common on some Acer devices, where the `acer_wmi` module interferes with the proper functioning of the Wi-Fi adapter.

## How it works

The script adds the line `blacklist acer_wmi` to the system's blacklist file `/etc/modprobe.d/blacklist.conf`, preventing the problematic module from loading. After the modification, the system is rebooted to apply the changes.

## How to use

1. Clone this repository or download the script:
   ```bash
   git clone https://github.com/your-username/disable-acer-wmi.git
   ```

2. Make the script executable:
   ```bash
   chmod +x desativar_acer_wmi.sh
   ```

3. Run the script as a superuser:
   ```bash
   sudo ./desativar_acer_wmi.sh
   ```

The script will add the `acer_wmi` module to the blacklist and automatically reboot the system.

## Requirements

- Linux (works on Debian-based distributions like Ubuntu).
- Superuser (root) permissions to modify system files.

## Contributions

Feel free to contribute or suggest improvements. If you encounter any issues or have suggestions, open an issue!
