#!/usr/bin/env bash
# Download one HTTPS image/video/model asset to a local staging folder using aria2c.
# Usage: bash tools/scroll-world/scripts/download-assets.sh 'https://host/path/file.mp4' [local-filename.mp4]
# Downloads do not add files to git, replace site files or run any downloaded content.
set -euo pipefail

if ! command -v aria2c >/dev/null 2>&1; then
  echo "aria2c is missing. Run: bash tools/scroll-world/scripts/setup-aria2c.sh" >&2
  exit 1
fi

if (( $# < 1 || $# > 2 )); then
  echo "Usage: $0 'https://example.com/asset.mp4' [output-filename]" >&2
  exit 2
fi

url="$1"
case "$url" in
  https://*) ;;
  *) echo "For safety, supply an HTTPS asset URL." >&2; exit 2 ;;
esac

dest="${BRIGHT_SPARKS_ASSETS_DIR:-$HOME/Downloads/Bright-Sparks/scroll-world}"
mkdir -p -- "$dest"
args=(
  --no-conf=true
  --continue=true
  --check-certificate=true
  --file-allocation=none
  --max-concurrent-downloads=2
  --max-connection-per-server=4
  --split=4
  --min-split-size=20M
  --max-tries=5
  --retry-wait=3
  "--dir=$dest"
)

if (( $# == 2 )); then
  file="$2"
  if [[ -z "$file" || "$file" == *'/'* || "$file" == "." || "$file" == ".." ]]; then
    echo "Output filename must be a simple name without slashes." >&2
    exit 2
  fi
  args+=("--out=$file")
fi

printf 'Downloading to %s\n' "$dest"
exec aria2c "${args[@]}" "$url"
