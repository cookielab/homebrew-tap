cask "klovi" do
  version "3.4.0"
  sha256 "553917c568f03ba606d9a4cfbf71aad05c6c9ff43c6fd45aacd2e46ddda0dc3c"

  url "https://github.com/cookielab/klovi/releases/download/#{version}/Klovi-#{version}-macos-arm64.dmg"
  name "Klovi"
  desc "Browse, search, and present AI coding session history"
  homepage "https://github.com/cookielab/klovi"

  depends_on arch: :arm64

  app "Klovi.app"

  zap trash: [
    "~/Library/Application Support/io.cookielab.klovi",
    "~/Library/Preferences/io.cookielab.klovi.plist",
    "~/Library/Caches/io.cookielab.klovi",
  ]
end
