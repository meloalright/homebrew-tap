class Whoimpl < Formula
  desc "Semantic code intelligence — find implementations of traits and interfaces"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.8/who-aarch64-apple-darwin.tar.gz"
      sha256 "6f3205bd0c62ee3234cf61c389cf4c0f78bd9975863aa06c748cbd8388491f4a"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.8/who-x86_64-apple-darwin.tar.gz"
      sha256 "eeec587619711ff99cb914b6d8751e6ec1f5ca1207038fe0da2ac0820dcaf8fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.8/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14d3652ca2993272ff4e4960b82f65a1a05457ac21b28879973138817675a12c"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.8/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a6c93ec3f30cf103bb533dc7f8225a7c3e58bb413795df81cb517b2c5afea32"
    end
  end

  def install
    bin.install "whoimpl"
  end

  test do
    assert_match "whoimpl", shell_output("#{bin}/whoimpl --version")
  end
end
