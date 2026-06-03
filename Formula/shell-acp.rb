class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.14"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.14/shell-acp-0.0.14-aarch64-apple-darwin.tar.gz"
      sha256 "af487bca03817659fa9fc5cfa52b8543b87d0b149a4080b2a94cd4d47e77c977"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.14/shell-acp-0.0.14-x86_64-apple-darwin.tar.gz"
      sha256 "2f3c1ec95462620dfaf157625b3e81f93c555ae446e7c5ceb6a51c1a81455499"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.14/shell-acp-0.0.14-aarch64-unknown-linux-musl.tar.gz"
      sha256 "301b433ac8c7a06bcdef030b838c7b77dd9e1de4f44733845b19cd49ecf90901"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.14/shell-acp-0.0.14-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dd0e8daac6a38736b1a1e9f3c2032221562ceb0821eb671f5ed000a61cfb320c"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shell-acp --version")
  end
end
