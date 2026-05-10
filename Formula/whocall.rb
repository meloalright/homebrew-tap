class Whocall < Formula
  desc "Semantic code intelligence — find callers of a symbol"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.15/who-aarch64-apple-darwin.tar.gz"
      sha256 "2d947ddc84592f78b24ce88cd481d4d7cc91a3798bc288c6b874dc838549b33f"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.15/who-x86_64-apple-darwin.tar.gz"
      sha256 "9ec15a82e4901b4c9241166505a1dd2817635659b267a756b872925e96b1cceb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.15/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73d00dbeac0e44c99cc2ce97331a8972ec6caabbb9d887c46319e015752f1bdb"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.15/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b708485e01d0725b1be60e1acc4ab83b572b30147dc1c3e562767a2a7d0bff21"
    end
  end

  def install
    bin.install "whocall"
  end

  test do
    assert_match "whocall", shell_output("#{bin}/whocall --version")
  end
end
