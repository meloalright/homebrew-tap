class Whoimpl < Formula
  desc "Semantic code intelligence — find implementations of traits and interfaces"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.13/who-aarch64-apple-darwin.tar.gz"
      sha256 "47a2fd98d6ec0d2fc1ed9a84ecbac66b6d8c1c2b07c95327898b4130ae50fcf2"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.13/who-x86_64-apple-darwin.tar.gz"
      sha256 "0d12528c613a5402f3b91452d2475de17857cadc68b2b804dc38bf9061a7693c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.13/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f707d2d224ef98219c38e411cb7ea7139396a1f71284f266f2ca8da91b7d713"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.13/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "60029f12ba5a0dca173219068f9246baec9f245d685bc30232abb436f66cbe77"
    end
  end

  def install
    bin.install "whoimpl"
  end

  test do
    assert_match "whoimpl", shell_output("#{bin}/whoimpl --version")
  end
end
