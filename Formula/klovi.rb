class Klovi < Formula
  desc "A local web viewer for Claude Code session history"
  homepage "https://github.com/cookielab/klovi"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cookielab/klovi/releases/download/0.12.0/klovi-bun-darwin-arm64.tar.gz"
      sha256 "5a73ffc3046f91bc9ca9b11f44f90a8b36f8bbc0e98ff8635bdd919220bd051c"
    end
    on_intel do
      url "https://github.com/cookielab/klovi/releases/download/0.12.0/klovi-bun-darwin-x64.tar.gz"
      sha256 "8bb894aead73352b0b4814093903948d05192c954963be9d19899549de61f82c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cookielab/klovi/releases/download/0.12.0/klovi-bun-linux-arm64.tar.gz"
      sha256 "9d71cfa99145fd74a3f9028175f741a93300d7c10a94a7cf218e43becdae2e1d"
    end
    on_intel do
      url "https://github.com/cookielab/klovi/releases/download/0.12.0/klovi-bun-linux-x64.tar.gz"
      sha256 "70011444d201c09d46732d8780c517e0dbb92e91b0765dd7a935a517f279effd"
    end
  end

  def install
    bin.install "klovi"
  end

  test do
    assert_match "Klovi", shell_output("#{bin}/klovi --help")
  end
end
