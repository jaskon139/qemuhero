#!/bin/sh

#qemu-system-x86_64 -nographic -net nic,vlan=0 -net user,hostfwd=tcp:127.0.0.1:8888-:22 -m 512 -hda /app/ssh_and_ss/tc/tc.img < /dev/null &

/usr/local/bin/gotty --port $PORT -c user:pass --permit-write --reconnect /bin/bash 