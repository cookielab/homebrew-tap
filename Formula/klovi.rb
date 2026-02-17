class Klovi < Formula
  desc "A local web viewer for Claude Code session history"
  homepage "https://github.com/cookielab/klovi"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cookielab/klovi/releases/download/1.0.0/klovi-bun-darwin-arm64.tar.gz"
      sha256 "a124380ae10d453da255cfc8f81474e546a85431984e78849507263a40114f46"
    end
    on_intel do
      url "https://github.com/cookielab/klovi/releases/download/1.0.0/klovi-bun-darwin-x64.tar.gz"
      sha256 "924586153afaf4b5626e4f0d231be61ddc4151e5aa326029dc71f1abf041b8e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cookielab/klovi/releases/download/1.0.0/klovi-bun-linux-arm64.tar.gz"
      sha256 "4dfe833800da3ce421ea1a8da468483ccee39021f3bb6766dcb3684c114f0852"
    end
    on_intel do
      url "https://github.com/cookielab/klovi/releases/download/1.0.0/klovi-bun-linux-x64.tar.gz"
      sha256 "52b0d9189aa24c3456b40f755d7d44934d0516da15d47b86f2f5a5ea6748e9f0"
    end
  end

  def install
    bin.install "klovi"
  end

  test do
    assert_match "Klovi", shell_output("#{bin}/klovi --help")
  end
end
