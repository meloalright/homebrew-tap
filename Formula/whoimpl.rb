class Whoimpl < Formula
  desc "Semantic code intelligence — find implementations of traits and interfaces"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.6/who-aarch64-apple-darwin.tar.gz"
      sha256 "1ff4d8d53078fe14887d29974dab5cf47ab849f3f0f366aa1081ab49cb57a53b"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.6/who-x86_64-apple-darwin.tar.gz"
      sha256 "70ba1a87aaa0bf550abe12b524353ceaba954bd46a73f56eeeb5d5631169f503"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.6/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03999d433b299a6e2c58a252c5bb06117fb149d0fdda757b40637b83a938b40a"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.6/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e77f0dd32d089daa20032b3f9622e319618e9cd4970585ecd8b78594c2993dc4"
    end
  end

  def install
    bin.install "whoimpl"
  end

  test do
    assert_match "whoimpl", shell_output("#{bin}/whoimpl --version")
  end
end
