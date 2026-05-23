class CcEmail < Formula
  desc "A local-first email listener for coding agents"
  homepage "https://github.com/meloalright/cc-email"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.4/cc-email-aarch64-apple-darwin.tar.gz"
      sha256 "a92bfe74350dc64650d258047146ace34814882484e41c10b160f5047512ae4b"
    else
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.4/cc-email-x86_64-apple-darwin.tar.gz"
      sha256 "8a93d0123fcffb0baf079866b4f5dd64627aa0e00132e7bc98cb8e384696a15c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.4/cc-email-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "278e9e2d8698c3188366166c6024d3a6484f7662a6f2c640fb24f275dfdef58e"
    else
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.4/cc-email-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79f5c1506ab0bd65681231d82147b5eab9ff35f2c4d78546160e36d6431705e2"
    end
  end

  def install
    bin.install "cc-email"
  end

  test do
    assert_match "cc-email", shell_output("#{bin}/cc-email --version")
  end
end
