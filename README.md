# InfyniDock Homebrew Tap

Homebrew tap for [InfyniDock](https://www.infyniclick.com/) — a window-level Dock for macOS with live window previews, Option-Tab switching, and workspaces.

## Install

```bash
brew install --cask yeelone/tap/infynidock
```

Homebrew taps this repo automatically — no separate `brew tap` step needed.

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

## 发版维护（给作者）

cask 的下载源是 GitHub Releases 上带版本号的 dmg。每发一个新版：

1. 确认 dmg 已上传到 GitHub Releases：`InfyniDock-Installer-<version>.dmg`
2. 算 sha256：`shasum -a 256 InfyniDock-Installer-<version>.dmg`
3. 改 `Casks/infynidock.rb` 顶部的 `version` 和 `sha256` 两行
4. `git commit && git push`

查 GitHub 上的最新版本号：`brew livecheck --cask yeelone/tap/infynidock`
