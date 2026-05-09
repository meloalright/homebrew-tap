class Whocall < Formula
  desc "Semantic code intelligence — find callers of a symbol"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.10/who-aarch64-apple-darwin.tar.gz"
      sha256 "a58269b68391c4840ddd7584c20c9d338f514a4f692f7823c18a320dee904d50"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.10/who-x86_64-apple-darwin.tar.gz"
      sha256 "900f9997b3a43f61eb558629668aa9f7508c73ff97c969190d4e49d945e19800"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.10/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e4bcba835d49a61e733985c523eb09bd813b207fd25999baa901f1ce214618c0"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.10/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4827d2c51b9c16262de2a2e1eead5d468c98fc26e2f3563a0dfe29e14810722"
    end
  end

  def install
    bin.install "whocall"
  end

  test do
    assert_match "whocall", shell_output("#{bin}/whocall --version")
  end
end
