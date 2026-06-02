class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.7"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.7/shell-acp-0.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "c20ebdd60745a194ec38c908a600645ecd2dcaa23fc57e66870b565ce49b6363"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.7/shell-acp-0.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "8134d0a4689547ed4575b923e21238933b6cf0e03dc0652c2e8a8ffe86d8af5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.7/shell-acp-0.0.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60b7a38dcefdb43f649b3812404430457c86961f0af319d8a79e3429d4e64398"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.7/shell-acp-0.0.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e42581dfab24645842816c01901459069b415b7a6ae5b68e9bdc7a9d3c3c3228"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shell-acp --version")
  end
end
