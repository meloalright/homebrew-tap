class AstCall < Formula
  desc "A location-first semantic caller analysis CLI"
  homepage "https://github.com/meloalright/ast-call"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/ast-call/releases/download/v0.0.2/ast-call-aarch64-apple-darwin.tar.gz"
      sha256 "274389d2d57fcb21364c40e7f40e88beb55c5e3f63ea8331c8acb544df2f2943"
    else
      url "https://github.com/meloalright/ast-call/releases/download/v0.0.2/ast-call-x86_64-apple-darwin.tar.gz"
      sha256 "611353d331e111dfa4b49370a0616b1880154edbeeb03aae5a2763cc840f3b41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/ast-call/releases/download/v0.0.2/ast-call-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d48674735de195cc3399f161e32036ea49c26a83ad68c5ef993fba29c80566a9"
    else
      url "https://github.com/meloalright/ast-call/releases/download/v0.0.2/ast-call-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e959d6611173346a6da8dce2e0beadb9f9e3a282859cbf1ebd847cb47229e55"
    end
  end

  def install
    bin.install "ast-call"
  end

  test do
    assert_match "ast-call", shell_output("#{bin}/ast-call --version")
  end
end
