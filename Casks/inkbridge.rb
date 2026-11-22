cask "inkbridge" do
  version "1.1.4"
  sha256 "0f30e076334f05bcb1628afa85b84f8c9805dc80361579d7012b842348ba3d4b"

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
