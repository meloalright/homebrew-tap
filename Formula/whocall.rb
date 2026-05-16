class Whocall < Formula
  desc "Semantic code intelligence — find callers of a symbol"
  homepage "https://github.com/meloalright/whocall"
  version "0.0.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/whocall/releases/download/v0.0.25/who-aarch64-apple-darwin.tar.gz"
      sha256 "c37ce4d03ce2d889467199b9ee737eaef7f9cdf3b325039adda148ef8ff84f66"
    else
      url "https://github.com/meloalright/whocall/releases/download/v0.0.25/who-x86_64-apple-darwin.tar.gz"
      sha256 "90566c615ce75ae6abd63593d4f8451dae3ae87876eaee23f1c1b99fcdfa9621"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/whocall/releases/download/v0.0.25/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9e23259903ea092b25fad6274d98c00a815bf1de08a6f045f498b231c58138d"
    else
      url "https://github.com/meloalright/whocall/releases/download/v0.0.25/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6da88214a8c64434950c04c1a9fab35acd63057d4917610bbfc2b9fbaad88b05"
    end
  end

  def install
    bin.install "whocall"
  end

  test do
    assert_match "whocall", shell_output("#{bin}/whocall --version")
  end
end
