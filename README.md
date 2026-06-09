# InfyniDock Homebrew Tap

Homebrew tap for [InfyniDock](https://www.infyniclick.com/) - a window-level Dock for macOS with live window previews, Option-Tab switching, and workspaces.

## Install

```bash
brew install --cask yeelone/tap/infynidock
```

Homebrew taps this repo automatically, with no separate `brew tap` step needed.

## Upgrade / Uninstall

```bash
brew upgrade --cask infynidock           # InfyniDock also self-updates via Sparkle
brew uninstall --cask infynidock
brew uninstall --zap --cask infynidock   # also removes preferences, logs and caches
```

## Links

- Website: https://www.infyniclick.com/
- Releases: https://github.com/yeelone/InfyniDock/releases

---

## Maintaining

The cask downloads a versioned DMG from GitHub Releases. For each new release:

1. Make sure the DMG is uploaded to GitHub Releases as `InfyniDock-Installer-<version>.dmg`
2. Compute its checksum: `shasum -a 256 InfyniDock-Installer-<version>.dmg`
3. Update the `version` and `sha256` lines at the top of `Casks/infynidock.rb`
4. `git commit && git push`

Check the latest published version with `brew livecheck --cask yeelone/tap/infynidock`.
