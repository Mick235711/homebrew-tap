cask "infynidock" do
  version "2.14.8"
  sha256 "57f1be0777e700188b2d7b74246b051a1a691c8f86091ba40c2ed41a817b68d8"

  url "https://github.com/yeelone/InfyniDock/releases/download/#{version}/InfyniDock-Installer-#{version}.dmg"
  name "InfyniDock"
  desc "Window-level dock with live previews, Option-Tab and workspaces"
  homepage "https://www.infyniclick.com/"

  # New tags appear on GitHub Releases; track them automatically.
  livecheck do
    url :url
    strategy :github_latest
  end

  # InfyniDock ships its own Sparkle-based updater, so Homebrew should not
  # manage upgrades.
  auto_updates true
  depends_on macos: :ventura

  # NOTE: the bundle inside the DMG is "InfyniDock.app" (capital I),
  # which differs from the Sparkle zip's "infyniDock.app".
  app "InfyniDock.app"

  # Paths from uninstall.sh + standard macOS locations for bundle id
  # www.infyniclick.com.dock. Removed by `brew uninstall --zap`.
  zap trash: [
    "~/Library/Application Support/InfyniDock",
    "~/Library/Caches/www.infyniclick.com.dock",
    "~/Library/HTTPStorages/www.infyniclick.com.dock",
    "~/Library/LaunchAgents/com.infyniclick.infynidock.daemon.plist",
    "~/Library/Logs/InfyniDock",
    "~/Library/Preferences/www.infyniclick.com.dock.plist",
  ]
end
