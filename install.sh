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
brew install herdr

install_config() {
  local source_file="$1"
  local target_file="$2"
  local target_dir
  local backup

  target_dir="$(dirname -- "$target_file")"
  mkdir -p "$target_dir"
  if [[ -L "$target_file" ]]; then
    echo "Refusing to replace symlink: $target_file" >&2
    return 1
  fi
  if [[ -f "$target_file" ]]; then
    if cmp -s "$source_file" "$target_file"; then
      echo "Config already matches: $target_file"
      return 0
    fi
    backup="$(mktemp "$target_file.backup-XXXXXXXX")"
    cp -p "$target_file" "$backup"
    echo "Backed up existing config to: $backup"
  fi

  cp "$source_file" "$target_file"
  chmod 644 "$target_file"
  echo "Installed config at: $target_file"
}

install_config "$source_config" "$target_config"
install_config "$script_dir/herdr/config.toml" "$HOME/.config/herdr/config.toml"
echo "Restart Ghostty and Herdr to apply the settings."
