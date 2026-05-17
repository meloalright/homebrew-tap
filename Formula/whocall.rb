class Whocall < Formula
  desc "Semantic code intelligence — find callers of a symbol"
  homepage "https://github.com/meloalright/whocall"
  version "0.0.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/whocall/releases/download/v0.0.26/who-aarch64-apple-darwin.tar.gz"
      sha256 "72cc6669db4cb2e876984b9a3871a2a3a4851747d6d13f19f2fbe2551920e3e3"
    else
      url "https://github.com/meloalright/whocall/releases/download/v0.0.26/who-x86_64-apple-darwin.tar.gz"
      sha256 "8d38780debca096fc2a50e4dbc91aff11e0a6363b271800b554816722b64f215"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/whocall/releases/download/v0.0.26/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e77cc9701d78a71f2c5e5b2391b592383b95a0868c94b432e3ea5a572745fa27"
    else
      url "https://github.com/meloalright/whocall/releases/download/v0.0.26/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef80313c6381f6e37298627909012ffde1b42bcc34ba03601e66904c24790452"
    end
  end

  def install
    bin.install "whocall"
  end

  test do
    assert_match "whocall", shell_output("#{bin}/whocall --version")
  end
end
