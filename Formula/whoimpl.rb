class Whoimpl < Formula
  desc "Semantic code intelligence — find implementations of traits and interfaces"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.19/who-aarch64-apple-darwin.tar.gz"
      sha256 "e677edfe60a5891991d6566c8ef2181573cf17df598175a098db9cbf21d102a6"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.19/who-x86_64-apple-darwin.tar.gz"
      sha256 "eee0ac0df9e6b77e62a633ca801327a5c2c0eeb03ddc1f17f11edda980f85fe6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.19/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a5089ca826de9a83f6b31a2140895f8c98e1b39e256d44519c2a3523182f603"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.19/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37471c862c2cdf008616b319e5cca4e73f41ceaf367ed1176110026c9a9ad478"
    end
  end

  def install
    bin.install "whoimpl"
  end

  test do
    assert_match "whoimpl", shell_output("#{bin}/whoimpl --version")
  end
end
