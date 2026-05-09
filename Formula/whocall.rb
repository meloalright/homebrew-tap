class Whocall < Formula
  desc "Semantic code intelligence — find callers of a symbol"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.11/who-aarch64-apple-darwin.tar.gz"
      sha256 "004a7b8af4c05e7a514030b09e7960118321e8e8dfa3c09a3e81fe9e3b46ed92"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.11/who-x86_64-apple-darwin.tar.gz"
      sha256 "2187151e7735c9b5d0d57319e853586b989fd3c13560034d7439b17f3a6bbce1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.11/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c670e6b7c2f10fcdec6c3e6ccb1f28249a1d5f2b03ee3ff3a005f28f585661c5"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.11/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e295cb2999184d911f5e4aead2ed1f452e866b1d7659d569f0f8d2b8419217e"
    end
  end

  def install
    bin.install "whocall"
  end

  test do
    assert_match "whocall", shell_output("#{bin}/whocall --version")
  end
end
