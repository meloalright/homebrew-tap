class Whoimpl < Formula
  desc "Semantic code intelligence — find implementations of traits and interfaces"
  homepage "https://github.com/meloalright/who-ast"
  version "0.0.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.21/who-aarch64-apple-darwin.tar.gz"
      sha256 "75f4c6a32333ad91ebce4e6f5b2725fd123807dfe6f30e681bd3e709abac5231"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.21/who-x86_64-apple-darwin.tar.gz"
      sha256 "a55800351eea37ad059d4fc0045f10ac0bff3f380eb7c73e2755e6026c7f49cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.21/who-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e83a77d3608b7c77e2f547151b98e53624a70dd2a27b754ec2997765f5fba0cd"
    else
      url "https://github.com/meloalright/who-ast/releases/download/v0.0.21/who-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7472d8b0b69a9d5817bf711909026a437b9e97e27c3ce00cd35085cfc8db0031"
    end
  end

  def install
    bin.install "whoimpl"
  end

  test do
    assert_match "whoimpl", shell_output("#{bin}/whoimpl --version")
  end
end
