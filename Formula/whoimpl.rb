class Whoimpl < Formula
  desc "Semantic code intelligence — find implementations of traits and interfaces"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.22/who-aarch64-apple-darwin.tar.gz"
      sha256 "bc66363c0fe638779f8afdb129de8fb6fb0e202a3810732566c2571cedeec20b"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.22/who-x86_64-apple-darwin.tar.gz"
      sha256 "79e2b57602bc62aed698d91e0a788212220a5f8a966a18adbf7b6fe89f0dec08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.22/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8db61b1d7f3991b8c2be183ed421714310097fdd79c680934fea3ffecd1eac74"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.22/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf12d7205db52c43f3c8aa65c5b07a9e51883d30dec934e9eb1376c204c2a45b"
    end
  end

  def install
    bin.install "whoimpl"
  end

  test do
    assert_match "whoimpl", shell_output("#{bin}/whoimpl --version")
  end
end
