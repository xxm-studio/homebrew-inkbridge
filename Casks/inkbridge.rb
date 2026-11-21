cask "inkbridge" do
  version "1.1.3"
  sha256 "75d7bab2d4c062614ced1376657a91dbe08d9ad5aa1d152d56e7d1f530f7ceb9"

  url "https://github.com/xxm-studio/homebrew-inkbridge/releases/download/v#{version}/InkBridge-#{version}.dmg",
      verified: "github.com/xxm-studio/homebrew-inkbridge/"
  name "InkBridge"
  desc "Use an iPad and Apple Pencil as a graphics tablet"
  homepage "https://inkbridge.pages.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "InkBridge.app"

  zap trash: "~/Library/Preferences/com.inkbridge.mac.plist"
end
