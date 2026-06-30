cask "oh-my-grid" do
  version "1.6.3"
  sha256 "866cb0c8582a6d87101d887822eff07515766f3251a16bff1b9fd6947c571bb0"

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
