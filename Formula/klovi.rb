class Klovi < Formula
  desc "A local web viewer for Claude Code session history"
  homepage "https://github.com/cookielab/klovi"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cookielab/klovi/releases/download/0.13.0/klovi-bun-darwin-arm64.tar.gz"
      sha256 "f1d67b7572e3e2498e5f76fc7155e7d2465697730635677949e3f2ea67e5cd56"
    end
    on_intel do
      url "https://github.com/cookielab/klovi/releases/download/0.13.0/klovi-bun-darwin-x64.tar.gz"
      sha256 "ab04320a1c93d530709632d51f38a45ba433ae8d7941397e52fe2f310a97d2f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cookielab/klovi/releases/download/0.13.0/klovi-bun-linux-arm64.tar.gz"
      sha256 "034ae61c83e1f8842a2382cb1ce4726cc97921a51bd3a803ac91e877fb019827"
    end
    on_intel do
      url "https://github.com/cookielab/klovi/releases/download/0.13.0/klovi-bun-linux-x64.tar.gz"
      sha256 "38971608c70cc509c7fb7517cf9df256aa68ac8eaf768a14bf034d75655f410e"
    end
  end

  def install
    bin.install "klovi"
  end

  test do
    assert_match "Klovi", shell_output("#{bin}/klovi --help")
  end
end
