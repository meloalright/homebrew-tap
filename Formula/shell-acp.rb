class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.15"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.15/shell-acp-0.0.15-aarch64-apple-darwin.tar.gz"
      sha256 "eb4e489bb8dded567adfa104592e2a40ff2a873ec0935aa5594dfc7bad02d560"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.15/shell-acp-0.0.15-x86_64-apple-darwin.tar.gz"
      sha256 "64e27570fb9660b9138e0b589614803c0a5f3583f9d50848ef8a67cd602f6c09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.15/shell-acp-0.0.15-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f409eeee15ab6fc39b4e6e570078b162f65dc02c234398174c8e0a7afdea00eb"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.15/shell-acp-0.0.15-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af81bd84e91b51490df63ed7f9d483188b7083459e3cadb404c3d38f427057d3"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shell-acp --version")
  end
end
