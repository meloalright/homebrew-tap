class CcEmail < Formula
  desc "A local-first email listener for coding agents"
  homepage "https://github.com/meloalright/cc-email"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.2/cc-email-aarch64-apple-darwin.tar.gz"
      sha256 "09c5221c42965947733f512b7397966ff129881a8b46c32367387b111f62486d"
    else
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.2/cc-email-x86_64-apple-darwin.tar.gz"
      sha256 "6a3598a2e959808d83d4969cc8fd97c466daaaa7c88beb7c096ebca5aed1b441"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.2/cc-email-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a910121c790d0b00abd33b3db9a69c84aab4d6a8743eea23ba8b4bc14103ea7b"
    else
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.2/cc-email-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f61fc2bb1718448780413240eabffbf29c64c1ec28195a3cdb5154de4ef88b4"
    end
  end

  def install
    bin.install "cc-email"
  end

  test do
    assert_match "cc-email", shell_output("#{bin}/cc-email --version")
  end
end
