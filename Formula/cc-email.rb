class CcEmail < Formula
  desc "A local-first email listener for coding agents"
  homepage "https://github.com/meloalright/cc-email"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.1/cc-email-aarch64-apple-darwin.tar.gz"
      sha256 "8b70d37e9a5f774cba6cf0761621fbbf71d4d9cbacda62ab70d135c22943277c"
    else
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.1/cc-email-x86_64-apple-darwin.tar.gz"
      sha256 "7f23fc8fe65ab429f604fdf86f5131fb2119d355d0e0aae122b6fe6eb8183ad4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.1/cc-email-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c655cc78566f3bbcd0bbfa68be27b91b80ac1a6f6070ff3ba629696d75427ddd"
    else
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.1/cc-email-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c06d2f893ba075c938c7dbdafd7c41c09201d20cdf68446ef83182efb7e2121"
    end
  end

  def install
    bin.install "cc-email"
  end

  test do
    assert_match "cc-email", shell_output("#{bin}/cc-email --version")
  end
end
