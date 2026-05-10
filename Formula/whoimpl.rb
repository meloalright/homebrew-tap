class Whoimpl < Formula
  desc "Semantic code intelligence — find implementations of traits and interfaces"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.20/who-aarch64-apple-darwin.tar.gz"
      sha256 "64852aad44d2fb0272c993ebeef4260d6537eb203ddead0bc7bc6a2791bc3bdd"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.20/who-x86_64-apple-darwin.tar.gz"
      sha256 "86ce2ed618bd2cbf75110d9fffc6f1f41419b384da8d4b8a26b7c3c8b493eb15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.20/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "920dff41c870760f5e63db4e5e50769c0b4ae4cdfc758c7c0344c7166c5229aa"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.20/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc6ee38a0058915a8a10567277f1c3cd17f189190a4cce6cf8f89ab50e9ebc47"
    end
  end

  def install
    bin.install "whoimpl"
  end

  test do
    assert_match "whoimpl", shell_output("#{bin}/whoimpl --version")
  end
end
