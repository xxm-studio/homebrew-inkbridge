cask "inkbridge" do
  version "1.0.3"
  sha256 "d9dc4ee9ab9f54c04782e9d3920c2cb3f031c92c26aa837ae5f913ce3f14e73d"

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
  depends_on arch: :arm64

  app "InkBridge.app"

  zap trash: "~/Library/Preferences/com.inkbridge.mac.plist"
end
