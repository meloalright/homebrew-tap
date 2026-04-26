class Clowcard < Formula
  desc "Clow card divination in your terminal"
  homepage "https://github.com/meloalright/clowcard"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/clowcard/releases/download/v0.0.1/clowcard-aarch64-apple-darwin.tar.gz"
      sha256 "3f69bcc076c12122aeb914b71e572d441d6274798515f3048e8163fc3505b7dd"
    else
      url "https://github.com/meloalright/clowcard/releases/download/v0.0.1/clowcard-x86_64-apple-darwin.tar.gz"
      sha256 "adac48127cf8545fc1ed7f297969b36afb76c194a5060cd1f7f32cecaba9d382"
    end
  end

  on_linux do
    url "https://github.com/meloalright/clowcard/releases/download/v0.0.1/clowcard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "37140add9249ff98d4000f57edcdc0cf66ba8668e71a3d44c188d9139d93335c"
  end

  def install
    bin.install "clowcard"
  end

  test do
    assert_match "clowcard", shell_output("#{bin}/clowcard -h")
  end
end
