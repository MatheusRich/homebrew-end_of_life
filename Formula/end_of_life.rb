class EndOfLife < Formula
  desc "List GitHub repositories using end-of-life software"
  homepage "https://github.com/MatheusRich/end_of_life"
  version "1.0.0.alpha"

  url "https://github.com/MatheusRich/end_of_life/releases/download/v1.0.0.alpha/end_of_life-v1.0.0.alpha-macos.tar.gz"
  sha256 "59b400c664447d99d81ccef89a9b7b77445ff1c3e516b00bb52b5af39e72ef38"

  def install
    odie "macOS 15 (Sequoia) or newer is required" if MacOS.version < :sequoia

    bin.install "end_of_life"
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
