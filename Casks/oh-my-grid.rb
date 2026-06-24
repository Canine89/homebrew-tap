cask "oh-my-grid" do
  version "1.6.1"
  sha256 "7834966a1635eaaae84bf7afa69098a2d5b701f7b90819b1abba6cb2e46c7cd3"

  url "https://github.com/Canine89/oh-my-grid/releases/download/v#{version}/oh-my-grid-#{version}.dmg"
  name "oh-my-grid"
  desc "Grid-based window snapping tool"
  homepage "https://github.com/Canine89/oh-my-grid"

  depends_on macos: :tahoe

  app "oh-my-grid.app"

  zap trash: [
    "~/Library/Application Support/oh-my-grid",
    "~/Library/Caches/com.goldenrabbit.ohmygrid",
    "~/Library/HTTPStorages/com.goldenrabbit.ohmygrid",
    "~/Library/Preferences/com.goldenrabbit.ohmygrid.plist",
  ]
end
