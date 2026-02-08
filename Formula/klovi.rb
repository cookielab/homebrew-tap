# Placeholder — automatically updated by the klovi homebrew-release workflow.
class Klovi < Formula
  desc "A local web viewer for Claude Code session history"
  homepage "https://github.com/cookielab/klovi"
  version "0.0.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "klovi"
  end

  test do
    assert_match "Klovi", shell_output("#{bin}/klovi --help")
  end
end
