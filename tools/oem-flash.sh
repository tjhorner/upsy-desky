#!/bin/bash

MAC_ADDR=$(esptool.py --chip esp32 read_mac | sed -En "s/MAC: (.*)/\1/p" | uniq | sed 's/://g')
esphome upload --device /dev/cu.usbserial* ../firmware/stock.yaml

if ! command -v cp210x-cfg &> /dev/null
then
  # Get cp210x-cfg from https://github.com/DiUS/cp210x-cfg
  echo "cp210x-cfg was not found; CP2102 will not be serialized or renamed"
else
  cp210x-cfg -N "Upsy Desky" -S $MAC_ADDR
fi