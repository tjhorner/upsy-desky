# Upsy Desky <img src="https://user-images.githubusercontent.com/2646487/186949382-4a173c5d-bfba-4284-a676-22c7121c7456.png" width="200" align="right">

This repository contains the source files for the Upsy Desky, a device which lets you connect your standing desk to any home automation system.

You can buy one on Tindie:

<a href="https://www.tindie.com/products/tjhorner/upsy-desky/?ref=offsite_badges&utm_source=sellers_tjhorner&utm_medium=badges&utm_campaign=badge_large"><img src="https://d2ss6ovg47m0r5.cloudfront.net/badges/tindie-larges.png" alt="I sell on Tindie" width="200" height="104"></a>

## Repository Structure

At the root of the repository you will find these directories:

- `pcb`: KiCad schematic and PCB design files (CC BY-NC-SA 4.0)
- `enclosure`: Fusion 360 design files and STLs for the enclosure (CC BY-NC-SA 4.0)
- `firmware`: ESPHome configuration files for the stock firmware (MIT)

With these you can make your own Upsy Desky from scratch, or you can make changes to the design and firmware to suit your needs. (If you do, I would love to see it!)

## What's new‽

This is the successor to the [WiFi Standing Desk Controller](https://github.com/tjhorner/wifi-desk-controller), packed with improvements and bug fixes — most notably:

- USB-C port for easy flashing (and because USB-C is cool 😎)
- Improved enclosure design with a more snug fit and screw-mounted PCB, allowing for easier repairs and troubleshooting
- Replacing the D1 Mini with an ESP32-WROOM module, providing hardware UART for more reliable desk connection
- A catchier name, because "WiFi Standing Desk Controller" was a mouthful

This revision also fixes some annoying issues from the first version, such as the desk sometimes lowering on startup, or simply not powering at all without a hacky workaround.

## In a nutshell...

As with the original version of this product, it can connect your motorized standing desk to your home automation system. It can read your desk's current height, and set it as well. This lets you create automations that integrate with your desk, for example:

- If you're sitting for too long, raise desk to standing height
- When you leave home, raise desk to max height so the cat can't knock things over
- Have an infinite number of presets for everyone in your household
- Send desk height data to InfluxDB to analyze how often you're sitting vs. standing
- [Publish your desk's height on the internet](https://tjhorner.dev/sitting-or-standing/)

Or whatever else you'd like. The possibilities are endless! As long as the possibilities involve a standing desk.

## Compatibility

Any standing desk that uses RJ45 to connect to the keypad is likely compatible, but these brands of desks have been verified to work, with official firmware provided:

- UPLIFT v2
- Fully Jarvis

## Documentation

You can find everything you need in the [GitHub wiki](https://github.com/tjhorner/upsy-desky/wiki/Getting-Started).

## Licenses

The ESPHome configs are licensed under MIT; everything else (enclosure and PCB design) are CC BY-NC-SA 4.0. The appropriate license files are available in the root of the repo.