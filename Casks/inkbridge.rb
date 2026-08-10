cask "inkbridge" do
  version "1.1.0"
  sha256 "dc393e983cf82f5c2d13dada9516dbae1e8f944ddccb0640d449e8fc537d573d"

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
