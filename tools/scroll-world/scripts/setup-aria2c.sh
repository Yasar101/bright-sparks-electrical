#!/usr/bin/env bash
# Install aria2c, the aria2 command-line downloader, on an Omarchy/Arch workstation.
# Source: https://github.com/aria2/aria2
# This does not modify the website or enable aria2's RPC daemon.
set -euo pipefail

if command -v aria2c >/dev/null 2>&1; then
  printf 'aria2c is already installed: %s\n' "$(command -v aria2c)"
  aria2c --version | head -n 1
  exit 0
fi

if ! command -v pacman >/dev/null 2>&1; then
  printf 'This setup script supports Arch Linux / Omarchy. Install aria2 with your OS package manager.\n' >&2
  exit 1
fi

sudo pacman -S --needed aria2
command -v aria2c
aria2c --version | head -n 1
