class Whoimpl < Formula
  desc "Semantic code intelligence — find implementations of traits and interfaces"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.7/who-aarch64-apple-darwin.tar.gz"
      sha256 "ebc70b6393286a11b1119bf594ac03acd82c50d9d0641d1a3f643c5ae0756960"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.7/who-x86_64-apple-darwin.tar.gz"
      sha256 "357a66a8d413b6d6fb28b5a90ce9c0d50ef984b0bc87b64955ab1f05852a4042"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.7/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c07d10605ea0f7675e6946489845ba8ea783a8f1603a4ed12ffa1f2e14a7445"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.7/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0bacf17cad0a4154c2cf121eddee011120a168b899e20f4edf506f74b1bdf4b5"
    end
  end

  def install
    bin.install "whoimpl"
  end

  test do
    assert_match "whoimpl", shell_output("#{bin}/whoimpl --version")
  end
end
