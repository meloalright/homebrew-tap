class WhoImpl < Formula
  desc "Semantic code intelligence — find implementations of traits and interfaces"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.4/who-aarch64-apple-darwin.tar.gz"
      sha256 "d3d1e0840807ac85d907bcd5da8b1386cbf8eb90e12e14af21b28841ac79fa98"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.4/who-x86_64-apple-darwin.tar.gz"
      sha256 "4ee15d95e098ad2fc0d1f16b8546775b5ef7c729379cd1c109c1292952ead52e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.4/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0b8ea42475e140f3fa91d37c92adfbd4eeb3e2e89232271b8e276be8131e72a"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.4/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c204d98a725f05c8afa7cedcc480cd37237a4f48eb3b8efe773131f0f24e5fa8"
    end
  end

  def install
    bin.install "whoimpl"
  end

  test do
    assert_match "whoimpl", shell_output("#{bin}/whoimpl --version")
  end
end
