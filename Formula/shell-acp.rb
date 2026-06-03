class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.10"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.10/shell-acp-0.0.10-aarch64-apple-darwin.tar.gz"
      sha256 "9a4744606a9af2a9f1873da5f5267464be529c7f965d092a0e4dd2082635b61d"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.10/shell-acp-0.0.10-x86_64-apple-darwin.tar.gz"
      sha256 "cd3f74426d00c9d51f4bc580d746310c90f291cd39b616bfc21a0e6f550a0cf1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.10/shell-acp-0.0.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e73cfd817e83214c945b0fc5a68a3dc1324e1fbb981d3bfcd5bc4db954088c97"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.10/shell-acp-0.0.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96b4dd1677d51d3c2c94c55b83c84ec8439e12f54a136b7571b0302f9577c192"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shell-acp --version")
  end
end
