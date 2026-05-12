class Whocall < Formula
  desc "Semantic code intelligence — find callers of a symbol"
  homepage "https://github.com/meloalright/whocall"
  version "0.0.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/whocall/releases/download/v0.0.23/who-aarch64-apple-darwin.tar.gz"
      sha256 "a3bada85ffb837e3614f8bb95233832bbbba968d8dfe1285ec140652e9b29b4d"
    else
      url "https://github.com/meloalright/whocall/releases/download/v0.0.23/who-x86_64-apple-darwin.tar.gz"
      sha256 "93535e9bca2a34ddd822867592b5fd7e1e908fe51cc74aedeb252fc564b9e3dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/whocall/releases/download/v0.0.23/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed8fb7afd2675d3b5b0b9b1cab1f67a7ac5d1983e98c701c5562dabf60cee264"
    else
      url "https://github.com/meloalright/whocall/releases/download/v0.0.23/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c11537ef6c3e58bf6b62047a529f28957d06a98dc001077d88ccff46fa593204"
    end
  end

  def install
    bin.install "whocall"
  end

  test do
    assert_match "whocall", shell_output("#{bin}/whocall --version")
  end
end
