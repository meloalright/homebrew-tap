class Whocall < Formula
  desc "Semantic code intelligence — find callers of a symbol"
  homepage "https://github.com/meloalright/whocall"
  version "0.0.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/whocall/releases/download/v0.0.27/who-aarch64-apple-darwin.tar.gz"
      sha256 "3b12c5b2eb903d41d73a7d47b5a1aacb46a9b4ec7fd2cf1451999058e3cac154"
    else
      url "https://github.com/meloalright/whocall/releases/download/v0.0.27/who-x86_64-apple-darwin.tar.gz"
      sha256 "ba9f37a486fa69cb912ee6240dd661895baa709f9b91b1b6fd011fcf35a90cb2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/whocall/releases/download/v0.0.27/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f9f551517016e34cddfc7832c13c5defeb570d6fa1eb432706fc7a45e39172a1"
    else
      url "https://github.com/meloalright/whocall/releases/download/v0.0.27/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d7e696563b8c1db92e3a07aabf41ef2e685743fed4bb8520361b1f6fd65c2a9"
    end
  end

  def install
    bin.install "whocall"
  end

  test do
    assert_match "whocall", shell_output("#{bin}/whocall --version")
  end
end
