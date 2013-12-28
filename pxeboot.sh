#!/bin/bash

tput clear
cat <<EOF



Intel UNDI,, PXE-2.1 (build 083)
Copyright (C) 1997-2000  Intel Corporation

This Product is covered by one or more of the following patents:
US6,570,884, US6,115,776 and US6,327,625

Realtek PCIe FE Family Controller Series v1.34 (10/07/13)

EOF

read -n1

echo 'CLIENT MAC ADDR: 00 E0 4C 94 22 EF  GUID: 00020003-0004-0005-0006-0007-0008-0009'
printf DHCP.

for (( interval=0; ; interval++ ))
do
  printf .
  for i in / - \\ \| / - \\ \| / - \\ \| / - \\ \| .
  do
    sleep 0.1
    printf '\b%s' "$i"
  done
done 2>/dev/null &
read -n1
kill $! >/dev/null 2>&1
printf '\r'

while read -r line
do
  sleep 0.01
  echo "$line";
done <<EOF
CLIENT IP: 10.0.2.2  MASK: 255.255.0.0  DHCP IP: 10.0.0.1
GATEWAY IP: 10.0.0.1




PXELINUX 3.63 Debian-2008-07-15 Copyright (C) 1994-2008 H. Peter Anvin
UNDI data segment at:   0008E790
UNDI data segment size: C4B0
UNDI code segment at:   0008AC40
UNDI code segment size: 2B08
PXE entry point found (we hope) at 9AC4:0100
My IP address seems to be 0A000202 10.0.2.2
ip=10.0.2.2:10.0.0.1:100.0.1:244.244.0.0
TFTP prefix:
Trying to load: pxelinux.cfg/00020003-0004-0005-0006-0007-0008-0009
Trying to load: pxelinux.cfg/01-00-e0-4c-94-22-ef
EOF

read -n1

while read -r line
do
  printf '%s' "$line"
  while :
  do
    sleep 0.01
    printf .
  done &
  read -n1
  kill $!
  printf '\n'
done <<EOF
Loading images/demo-mattcen/vmlinuz
Loading images/demo-mattcen/initrd.img
EOF
