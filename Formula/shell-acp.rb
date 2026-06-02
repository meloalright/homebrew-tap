class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.5"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.5/shell-acp-0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "db0a49c8d11b1d02de21bf1360a9ce252cbf2982990cb9c13fe935f6573aad56"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.5/shell-acp-0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "746608319c802149eb71a38a8223129bb0daf4f9992f699e7d2770b0ce41ee7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.5/shell-acp-0.0.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e427c4de428da046e9609386990e57c4ee44cecc64222e085eebf139ab3a9041"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.5/shell-acp-0.0.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cab99310c6795007e4e07f458164997c9538cab5de2e2206fdb63b0605c4346a"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match "shell-acp started", shell_output("echo | #{bin}/shell-acp 2>&1")
  end
end
