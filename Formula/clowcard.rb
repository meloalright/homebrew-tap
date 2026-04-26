class Clowcard < Formula
  desc "Clow card divination in your terminal"
  homepage "https://github.com/meloalright/clowcard"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/clowcard/releases/download/v0.0.1/clowcard-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/meloalright/clowcard/releases/download/v0.0.1/clowcard-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    url "https://github.com/meloalright/clowcard/releases/download/v0.0.1/clowcard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "clowcard"
  end

  test do
    assert_match "clowcard", shell_output("#{bin}/clowcard -h")
  end
end
