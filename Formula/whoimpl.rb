class Whoimpl < Formula
  desc "Semantic code intelligence — find implementations of traits and interfaces"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.18/who-aarch64-apple-darwin.tar.gz"
      sha256 "1b6e3009a8c3fd015d0d305d43c4a9eb51e7a083b113d0a084a0494dae38ea25"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.18/who-x86_64-apple-darwin.tar.gz"
      sha256 "7babe48ab3267b80e35ac0b7911cea55f7668ba05877b7e5c27c4da9705e4211"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.18/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "37fed99dfe96a171da753baad0dabea11dae656fdeba41bd0b989ba9cb961bf7"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.18/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93a323319244616d1f4f82f2b446741114d530f5a2e188cc696aa5fa648bc2d8"
    end
  end

  def install
    bin.install "whoimpl"
  end

  test do
    assert_match "whoimpl", shell_output("#{bin}/whoimpl --version")
  end
end
