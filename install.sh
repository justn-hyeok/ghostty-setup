#!/usr/bin/env bash
set -euo pipefail

if [[ "$(uname -s)" != Darwin ]]; then
  echo "This setup requires macOS." >&2
  exit 1
fi

if ! command -v brew >/dev/null 2>&1; then
  echo "Install Homebrew first: https://brew.sh" >&2
  exit 1
fi

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source_config="$script_dir/config.ghostty"
config_dir="$HOME/Library/Application Support/com.mitchellh.ghostty"
target_config="$config_dir/config.ghostty"

brew install --cask ghostty font-d2coding-nerd-font

mkdir -p "$config_dir"
if [[ -L "$target_config" ]]; then
  echo "Refusing to replace symlink: $target_config" >&2
  exit 1
fi
if [[ -f "$target_config" ]]; then
  if cmp -s "$source_config" "$target_config"; then
    echo "Ghostty config already matches."
    exit 0
  fi
  backup="$(mktemp "$config_dir/config.ghostty.backup-XXXXXXXX")"
  cp -p "$target_config" "$backup"
  echo "Backed up existing config to: $backup"
fi

cp "$source_config" "$target_config"
chmod 644 "$target_config"
echo "Installed Ghostty config at: $target_config"
echo "Restart Ghostty to apply the settings."
