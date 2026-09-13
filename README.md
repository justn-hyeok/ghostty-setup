# Ghostty + Herdr setup

My macOS Ghostty and Herdr configuration, including the D2KodingLigature Nerd Font Mono used by Ghostty. Homebrew's `font-d2coding-nerd-font` cask uses this font name as of version 3.5.1.

## Install

Requires macOS and [Homebrew](https://brew.sh/).

```sh
git clone https://github.com/justn-hyeok/ghostty-setup.git
cd ghostty-setup
bash install.sh
```

The installer installs Ghostty, the font, and Herdr through Homebrew. It copies the included configurations to `~/Library/Application Support/com.mitchellh.ghostty/config.ghostty` and `~/.config/herdr/config.toml`. If either file differs, it saves a uniquely named backup beside that file first. Running the installer again with matching configurations changes nothing. Restart Ghostty and Herdr after installation.

The Ghostty configuration mirrors my setup as of September 2026, with the updated font family name required by the current Homebrew font package. It sets the dark/light themes, D2Koding font, cursor, spacing, split behavior, scrollback, and command-finish notifications. The Herdr configuration mirrors my theme, contrast, status symbols, and sidebar layouts. It does not include shell dotfiles, Herdr's running sessions, workspace layouts, logs, plugins, or machine-specific presets.

## Sources and licenses

| Part | Source | Notes |
| --- | --- | --- |
| Ghostty | [Official project](https://github.com/ghostty-org/ghostty) · [Homebrew cask](https://formulae.brew.sh/cask/ghostty) | Terminal application; [MIT license](https://github.com/ghostty-org/ghostty/blob/main/LICENSE). |
| Herdr | [Official project](https://herdr.dev/) · [Homebrew formula](https://formulae.brew.sh/formula/herdr) · [configuration guide](https://herdr.dev/docs/configuration/) | Terminal workspace manager; Apache-2.0 license per Homebrew's formula. |
| Catppuccin | [Official palette](https://github.com/catppuccin/catppuccin) · [license](https://github.com/catppuccin/catppuccin/blob/main/LICENSE) | Herdr's built-in `catppuccin` theme, with local high-contrast color overrides. |
| D2KodingLigature Nerd Font Mono | [NAVER's original D2 Coding font](https://github.com/naver/d2-coding-font) · [Nerd Fonts patched font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/D2Coding) · [Homebrew cask](https://formulae.brew.sh/cask/font-d2coding-nerd-font) | The font is supplied by Nerd Fonts, based on NAVER's D2 Coding. The font licenses are [SIL Open Font License 1.1](https://github.com/ryanoasis/nerd-fonts/blob/master/LICENSE) and [NAVER's font license](https://github.com/naver/d2-coding-font/blob/master/OFL.txt). Nerd Fonts [renamed the patched font to D2Koding](https://github.com/ryanoasis/nerd-fonts/discussions/1968) to respect the original font's reserved name. |
| Dark theme | [Ghostty Default Style Dark](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/ghostty/Ghostty%20Default%20Style%20Dark) | Theme file bundled with Ghostty from the iTerm2 Color Schemes collection. |
| Light theme | [Builtin Tango Light](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/ghostty/Builtin%20Tango%20Light) | Theme file bundled with Ghostty from the same collection. |
| Installer | [Homebrew](https://brew.sh/) | `install.sh` uses Homebrew to install the application and font. |

This repository contains only my configuration and install script; it does not redistribute Ghostty, Herdr, fonts, or theme files. The theme names refer to themes already bundled with the applications.
