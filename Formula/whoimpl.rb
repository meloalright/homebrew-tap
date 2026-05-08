class Whoimpl < Formula
  desc "Semantic code intelligence — find implementations of traits and interfaces"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.5/who-aarch64-apple-darwin.tar.gz"
      sha256 "44561acfe5175fdbbe5e156ea09c7357f4c1249f789e91365dc2be396a2699f5"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.5/who-x86_64-apple-darwin.tar.gz"
      sha256 "e2de7cc9a0a3f58e55ac52bc0403ef9624bd8441d0f87e457fffd7c66ce26c77"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.5/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f081275f7cc9af3ba268b04ccc957d656cab24d183941137546ead41330a054"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.5/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0926628413e8f5768755b185b9028847607e1f6615f8d18be461281c82195487"
    end
  end

  def install
    bin.install "whoimpl"
  end

  test do
    assert_match "whoimpl", shell_output("#{bin}/whoimpl --version")
  end
end
