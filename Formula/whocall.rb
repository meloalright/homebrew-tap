class Whocall < Formula
  desc "Semantic code intelligence — find callers of a symbol"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.12/who-aarch64-apple-darwin.tar.gz"
      sha256 "d7aaa1e75581c15c85f396fe9f6c5d8fccaf39c39b4151586c6929feb4f945e9"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.12/who-x86_64-apple-darwin.tar.gz"
      sha256 "1eb7ef9bdb042ed54c916062b466bf1cc0a97da14444eaa89cb85acaffd829b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.12/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a8621ce33f960efa7d849e0614a6886ff4174cf461cb72ac0ad8a792c05a275"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.12/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "72919f858efca385c4f38c45a14cc6ee92bd798556eca2f5504bcb3ccd76ce43"
    end
  end

  def install
    bin.install "whocall"
  end

  test do
    assert_match "whocall", shell_output("#{bin}/whocall --version")
  end
end
