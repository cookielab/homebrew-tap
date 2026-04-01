cask "klovi" do
  version "3.2.1"
  sha256 "1d5e7d9cbf82ff7d7929fa64250059a6c211818d5625f3237e1920e7a034f6cf"

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
