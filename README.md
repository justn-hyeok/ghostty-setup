# Ghostty setup

My macOS Ghostty configuration, including the D2KodingLigature Nerd Font Mono it uses. Homebrew's `font-d2coding-nerd-font` cask uses this font name as of version 3.5.1.

## Install

Requires macOS and [Homebrew](https://brew.sh/).

```sh
git clone https://github.com/justn-hyeok/ghostty-setup.git
cd ghostty-setup
bash install.sh
```

The installer installs Ghostty and the font through Homebrew, then copies the included configuration to `~/Library/Application Support/com.mitchellh.ghostty/config.ghostty`. If that file differs, it saves a uniquely named backup in the same directory first. Running the installer again with a matching configuration changes nothing. Restart Ghostty after installation.

The configuration mirrors my Ghostty setup as of September 2026, with the updated font family name required by the current Homebrew font package. It sets the dark/light themes, D2Koding font, cursor, spacing, split behavior, scrollback, and command-finish notifications. It does not include shell dotfiles or other terminal tools.
