class CcEmail < Formula
  desc "A local-first email listener for coding agents"
  homepage "https://github.com/meloalright/cc-email"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.5/cc-email-aarch64-apple-darwin.tar.gz"
      sha256 "f35e494239b3822e62deec326ee1d99ead06b9ce1ebfc2d6a1d4ed8bbdfb2fad"
    else
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.5/cc-email-x86_64-apple-darwin.tar.gz"
      sha256 "226987eb86776b6b343ac7e71ef3fd4e59c289abf8b7d3e776f4b85df923dbcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.5/cc-email-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "50830887e61dfeb49b336da4d9fcb5bc158732269a5c4bd948e3c1f3301d8f9c"
    else
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.5/cc-email-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f611cb77a54d9b4a7a2d4fcd442b022c88b609eacf9dbec45459aa7fd51114c2"
    end
  end

  def install
    bin.install "cc-email"
  end

  test do
    assert_match "cc-email", shell_output("#{bin}/cc-email --version")
  end
end
