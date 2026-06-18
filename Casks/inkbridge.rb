cask "inkbridge" do
  version "1.0.2"
  sha256 "b569c5aa162106088574f6674f7cfc0589b82b6a393a8e22dcb1bb1d288798e7"

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
