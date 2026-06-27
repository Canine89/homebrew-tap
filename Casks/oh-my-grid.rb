cask "oh-my-grid" do
  version "1.6.2"
  sha256 "81257e938102b802eb6ef5dba15761ff132164bd5ab5395165bc0f35378f1327"

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
