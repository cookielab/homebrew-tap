class Klovi < Formula
  desc "A local web viewer for Claude Code session history"
  homepage "https://github.com/cookielab/klovi"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cookielab/klovi/releases/download/0.11.0/klovi-bun-darwin-arm64.tar.gz"
      sha256 "7391e33e49ce3adf21bda779a93e4379815225151cf129f636b546754ca21740"
    end
    on_intel do
      url "https://github.com/cookielab/klovi/releases/download/0.11.0/klovi-bun-darwin-x64.tar.gz"
      sha256 "8377b7e57c10341f3c10ae1f3cf42c04d62cf59eafa3d81cf71851935fd7ac5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cookielab/klovi/releases/download/0.11.0/klovi-bun-linux-arm64.tar.gz"
      sha256 "0cb4773283de1accd69840162913419d460fc80cacb19ffe5be12b1810092697"
    end
    on_intel do
      url "https://github.com/cookielab/klovi/releases/download/0.11.0/klovi-bun-linux-x64.tar.gz"
      sha256 "e00822266c28e9d42c92c01787f2e213e67e6b317a909bc4d3e74c088a32645d"
    end
  end

  def install
    bin.install "klovi"
  end

  test do
    assert_match "Klovi", shell_output("#{bin}/klovi --help")
  end
end
