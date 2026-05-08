class WhoCall < Formula
  desc "Semantic code intelligence — find callers of a symbol"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.3/who-aarch64-apple-darwin.tar.gz"
      sha256 "47457f423f64b5c7ce10b75260d75762cba8823f707adbfb9d0b235ad2308fcc"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.3/who-x86_64-apple-darwin.tar.gz"
      sha256 "a433e2c31e9ac22a324e34b16821b01165c99f9378da53fb6b4e990cab7621fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.3/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b2c7618102c0f1c9981c63e39bbc2082568006347e30421d7a1922cc9a33b08"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.3/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22e84eddd53ca19e9450a05613960192af94d69356974ed4421b21dad4b31fc3"
    end
  end

  def install
    bin.install "who-call"
  end

  test do
    assert_match "who-call", shell_output("#{bin}/who-call --version")
  end
end
