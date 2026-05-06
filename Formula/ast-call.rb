class AstCall < Formula
  desc "A location-first semantic caller analysis CLI"
  homepage "https://github.com/meloalright/ast-call"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/ast-call/releases/download/v0.0.1/ast-call-aarch64-apple-darwin.tar.gz"
      sha256 "e5d047607d0bae277ae182fa90b130eaf3c2da9ffb2237b0dff301489383e11d"
    else
      url "https://github.com/meloalright/ast-call/releases/download/v0.0.1/ast-call-x86_64-apple-darwin.tar.gz"
      sha256 "6fc0e95b53f25b77bbf7b212002a46458fd25c07ea0968d4e883c39af52955ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/ast-call/releases/download/v0.0.1/ast-call-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9e134c929dd093df8f46a09b3a5afd4b0316427b75ffb7fd19b05340f18a134"
    else
      url "https://github.com/meloalright/ast-call/releases/download/v0.0.1/ast-call-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4bc1f73864811cea99aa9b45ded931a5298abc0c1ef8326f89aa0a092cb7d063"
    end
  end

  def install
    bin.install "ast-call"
  end

  test do
    assert_match "ast-call", shell_output("#{bin}/ast-call --version")
  end
end
