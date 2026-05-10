class Whocall < Formula
  desc "Semantic code intelligence — find callers of a symbol"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.16/who-aarch64-apple-darwin.tar.gz"
      sha256 "bd2f124afb6d4981b80f6064afc8a31b028155d785500a280f31c6304c225113"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.16/who-x86_64-apple-darwin.tar.gz"
      sha256 "c18847bd778a96cc69122012a1df7a5785c4cebe288236ca37848360c977fac8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.16/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09b32cea2a7fe30607c2240a80deaa9225c1463b0acdd1c156360db19291d01a"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.16/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fbe1c166f4e14852e8c0d5124e472e2b1d25e8af51da9841969f77945ae02538"
    end
  end

  def install
    bin.install "whocall"
  end

  test do
    assert_match "whocall", shell_output("#{bin}/whocall --version")
  end
end
