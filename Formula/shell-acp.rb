class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.16"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.16/shell-acp-0.0.16-aarch64-apple-darwin.tar.gz"
      sha256 "f71affdbcced05515d0624fc44441928dc0f7deb6ca5134bf7d545b4eed147ba"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.16/shell-acp-0.0.16-x86_64-apple-darwin.tar.gz"
      sha256 "a431f54511755e21a674534f64f00817ad6f2fec66285f4b9208be7b2699d32a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.16/shell-acp-0.0.16-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b5df5c2d0d09c73ebfdca465a5d07eba8aeca9e6cc2f528969444243d569dde4"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.16/shell-acp-0.0.16-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0290274230b3fc2e4e8e3a2ab051c45e6375e0bb69cfca26a2c3d0fbc8892e07"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shell-acp --version")
  end
end
