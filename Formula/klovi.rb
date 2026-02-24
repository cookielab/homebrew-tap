class Klovi < Formula
  desc "A local web viewer for Claude Code session history"
  homepage "https://github.com/cookielab/klovi"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cookielab/klovi/releases/download/2.0.0/klovi-bun-darwin-arm64.tar.gz"
      sha256 "9afddacaec6715078f04db6530867c09cd27bc4143ab0b3abe633bdf58e63824"
    end
    on_intel do
      url "https://github.com/cookielab/klovi/releases/download/2.0.0/klovi-bun-darwin-x64.tar.gz"
      sha256 "f6868f46b05e8b20edbbd3178d51eb4eabc4e6a3c4f970b7191307ff96eeb0ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cookielab/klovi/releases/download/2.0.0/klovi-bun-linux-arm64.tar.gz"
      sha256 "9c43c508c72ebfc02288edd39f3506b7d10ee1a9699492478b498c8f6a580d90"
    end
    on_intel do
      url "https://github.com/cookielab/klovi/releases/download/2.0.0/klovi-bun-linux-x64.tar.gz"
      sha256 "c17bf2641be1edc7e9481dfa3a8069a698814cd94f2b3855bde18efa4d9b3b55"
    end
  end

  def install
    bin.install "klovi"
  end

  test do
    assert_match "Klovi", shell_output("#{bin}/klovi --help")
  end
end
