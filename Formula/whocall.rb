class Whocall < Formula
  desc "Semantic code intelligence — find callers of a symbol"
  homepage "https://github.com/meloalright/whocall"
  version "0.0.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/whocall/releases/download/v0.0.24/who-aarch64-apple-darwin.tar.gz"
      sha256 "09c826bea3b951431d5264f6a6441d47061757c9f9fa3c783a810e3ff0a6f987"
    else
      url "https://github.com/meloalright/whocall/releases/download/v0.0.24/who-x86_64-apple-darwin.tar.gz"
      sha256 "eb0f53be04e3522d3efc10a11f9ae02c3ef951cbf4798493a5761d47c1aea3a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/whocall/releases/download/v0.0.24/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5bcd359cc8c1ad2aa0f5d267e65fe777d2909c430bae75696ec30723e25842cb"
    else
      url "https://github.com/meloalright/whocall/releases/download/v0.0.24/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a38bcec46464ce1344b684aec486f3a3ea4c666d18ee9db19d1e69b93b1a485a"
    end
  end

  def install
    bin.install "whocall"
  end

  test do
    assert_match "whocall", shell_output("#{bin}/whocall --version")
  end
end
