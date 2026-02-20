class Klovi < Formula
  desc "A local web viewer for Claude Code session history"
  homepage "https://github.com/cookielab/klovi"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cookielab/klovi/releases/download/1.1.0/klovi-bun-darwin-arm64.tar.gz"
      sha256 "d061776dbbbf325aece4595958f64e161e82ace9ea7f05dc6283b1c92b0816ae"
    end
    on_intel do
      url "https://github.com/cookielab/klovi/releases/download/1.1.0/klovi-bun-darwin-x64.tar.gz"
      sha256 "4522839901100a30be703786d6c458032cc15199dba2d0f59af3843b7862f3f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cookielab/klovi/releases/download/1.1.0/klovi-bun-linux-arm64.tar.gz"
      sha256 "1d2b214729ac0af97ce03263be26f3d2ff91c1a3b776cdf757a79d868cead74e"
    end
    on_intel do
      url "https://github.com/cookielab/klovi/releases/download/1.1.0/klovi-bun-linux-x64.tar.gz"
      sha256 "a675d8e99f0b52d1d8c1365bb832b556035bed9ab2309f62d726ae42606ddee6"
    end
  end

  def install
    bin.install "klovi"
  end

  test do
    assert_match "Klovi", shell_output("#{bin}/klovi --help")
  end
end
