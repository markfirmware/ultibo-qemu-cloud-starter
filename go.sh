#!/bin/bash
set -x

qemu-system-arm -monitor stdio -M versatilepb -cpu cortex-a8 -kernel kernel.bin -m 256M -serial file:serial0.txt -usb -net nic -net user,hostfwd=tcp::5578-:80 -vnc :78,websocket=5778 -append 'qemuhostip=51.15.141.116 qemuhostportdigit=8'
