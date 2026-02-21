#icmp ping
#ports scan
#login via telnet
#reading flag

#!/bin/bash
TARGET=$1
if [ -z "$TARGET" ] ; then
    echo "usage : $0 <target_ip>"
    exit 1
fi
echo "[*] HTB meow Auto-exploit-target: $TARGET "
echo "[+] Checking connectivity to target. . ."
ping -c 2 -w 2 $TARGET &>/dev/null && echo "[*] Alive " || echo "[x] Dead"; exit 1 
echo "[+] Scanning Port 23 . . ."
if nmap -p 23 --open $TARGET 2>/dev/null | grep -q "23/tcp"; then 
    echo "[*] Open " 
else
     echo "[x] close"; 
    exit 1
fi
telnet $TARGET 23