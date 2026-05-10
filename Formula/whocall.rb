class Whocall < Formula
  desc "Semantic code intelligence — find callers of a symbol"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.17/who-aarch64-apple-darwin.tar.gz"
      sha256 "8d0901dbf959f30ef72023c3c0c1252fd416c709baff66c3637e3678d7c3583b"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.17/who-x86_64-apple-darwin.tar.gz"
      sha256 "329b6cf52215246a00de86bb913cc4eaf8eb81e65a75206fe24b7f9ad729d07b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.17/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1152852e6f9a30dc7f78a887576184f5b031b37cd956536e99d37e3f8c1fe74"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.17/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7cac261204417b4c6045ecaea0dc788de8f22e4ca674b3828cd4047c8ffafb13"
    end
  end

  def install
    bin.install "whocall"
  end

  test do
    assert_match "whocall", shell_output("#{bin}/whocall --version")
  end
end
