class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.2"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.2/shell-acp-0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "0e8c28f6b67e72bf4a453d84f296fa4570eac375610cc70c75cb5b06d6bc9473"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.2/shell-acp-0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "e606138f986d372d57cff7533f7bdd03f2739252e862b52f62b5e2473c1a3fe7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.2/shell-acp-0.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1da7f56159d830ab2d3550f07789b063e34aac0589885ef818623c1787880238"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.2/shell-acp-0.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "150827295aeda3e441cdd64e0c4129df6bf65b73fd34e173b178a9844de6833a"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match "shell-acp started", shell_output("echo | #{bin}/shell-acp 2>&1")
  end
end
