class Whocall < Formula
  desc "Semantic code intelligence — find callers of a symbol"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.9/who-aarch64-apple-darwin.tar.gz"
      sha256 "a47a01abc53d5d845cb8569ba7bc42c923b84484a9267ce95b20b24487836178"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.9/who-x86_64-apple-darwin.tar.gz"
      sha256 "a7db672d4cecbf181bd8b6318d4aaa38f411240d6be81187d94329025af66fd0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.9/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "efcbe85204d8e6b713ac9887ac9ea42ee6a43ca13508297162f2dfd0b15e9bb1"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.9/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7951cac3e3c669b8c960be9cd96754c48c2ebd18a9d54b37f73973195cc3f69"
    end
  end

  def install
    bin.install "whocall"
  end

  test do
    assert_match "whocall", shell_output("#{bin}/whocall --version")
  end
end
