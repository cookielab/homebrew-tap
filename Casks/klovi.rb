cask "klovi" do
  version "3.3.0"
  sha256 "e5743dc37adb62e4168eaef86859dee1b12460de30581bce9fd1b010216e19e1"

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
