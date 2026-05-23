class CcEmail < Formula
  desc "A local-first email listener for coding agents"
  homepage "https://github.com/meloalright/cc-email"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.3/cc-email-aarch64-apple-darwin.tar.gz"
      sha256 "8eb87a2b4dcd3760bd35e4344790a07079fab7be36f5cbe7859f7a217604b60f"
    else
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.3/cc-email-x86_64-apple-darwin.tar.gz"
      sha256 "88205138378cef70a3c84daaa384dda798f8b846241ede005a0ff9c57edceccc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.3/cc-email-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "88bf58158ca29487b93e8a29f6994564c4b068d958f1e11988c34a7aa92e68c4"
    else
      url "https://github.com/meloalright/cc-email/releases/download/v0.0.3/cc-email-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dfd4569aa159c6727472444fb343ef5f79fee0d35d9d1490aedca8baf2d2c3c7"
    end
  end

  def install
    bin.install "cc-email"
  end

  test do
    assert_match "cc-email", shell_output("#{bin}/cc-email --version")
  end
end
