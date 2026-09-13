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

## Sources and licenses

| Part | Source | Notes |
| --- | --- | --- |
| Ghostty | [Official project](https://github.com/ghostty-org/ghostty) · [Homebrew cask](https://formulae.brew.sh/cask/ghostty) | Terminal application; [MIT license](https://github.com/ghostty-org/ghostty/blob/main/LICENSE). |
| D2KodingLigature Nerd Font Mono | [NAVER's original D2 Coding font](https://github.com/naver/d2-coding-font) · [Nerd Fonts patched font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/D2Coding) · [Homebrew cask](https://formulae.brew.sh/cask/font-d2coding-nerd-font) | The font is supplied by Nerd Fonts, based on NAVER's D2 Coding. The font licenses are [SIL Open Font License 1.1](https://github.com/ryanoasis/nerd-fonts/blob/master/LICENSE) and [NAVER's font license](https://github.com/naver/d2-coding-font/blob/master/OFL.txt). Nerd Fonts [renamed the patched font to D2Koding](https://github.com/ryanoasis/nerd-fonts/discussions/1968) to respect the original font's reserved name. |
| Dark theme | [Ghostty Default Style Dark](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/ghostty/Ghostty%20Default%20Style%20Dark) | Theme file bundled with Ghostty from the iTerm2 Color Schemes collection. |
| Light theme | [Builtin Tango Light](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/ghostty/Builtin%20Tango%20Light) | Theme file bundled with Ghostty from the same collection. |
| Installer | [Homebrew](https://brew.sh/) | `install.sh` uses Homebrew to install the application and font. |

This repository contains only my configuration and install script; it does not redistribute Ghostty, fonts, or theme files. The theme names refer to files already bundled with Ghostty.
