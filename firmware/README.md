# Firmware Configs

This directory contains [ESPHome](https://esphome.io) config files for the Upsy Desky.

It is organized like so:

- `base.yaml`: The base essential configuration, which contains components for reading the desk height, preset buttons, etc.
- `stock.yaml`: Inherits everything from `base.yaml` and adds components which are useful on stock firmware, such as the WiFi hotspot, web server, and Improv Serial
- `debug.yaml`: Inherits everything from `stock.yaml` and adds components which are useful for debugging

## Addons

Major parts of the config are separated into "addons" so they can be easily included or excluded. The following addons are available:

- `presets.yaml`: Adds support for recalling and setting presets on the desk control box
- `runtime-config.yaml`: Adds support for runtime configuration options (you might want to remove this if you are configuring everything via ESPHome yaml)