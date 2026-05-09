class Whocall < Formula
  desc "Semantic code intelligence — find callers of a symbol"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.14/who-aarch64-apple-darwin.tar.gz"
      sha256 "b80465b788e0e5e443ea1dc4ea9aae95b3c436d05d346b0b1ed4e2670f3d7572"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.14/who-x86_64-apple-darwin.tar.gz"
      sha256 "155256b24e428746d005813aca4411a839263972fecde4b1cad86b348744937a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.14/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c8f1a10a8552ed2304e8d676765f1320896370df494b1c28eebedf4bba6a3327"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.14/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b9386aa635f18d46db316d69fb6ae14d23626bc19e56e99ca36a1a18720fefb"
    end
  end

  def install
    bin.install "whocall"
  end

  test do
    assert_match "whocall", shell_output("#{bin}/whocall --version")
  end
end
