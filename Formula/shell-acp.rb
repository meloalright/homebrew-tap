class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.4"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.4/shell-acp-0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "6122698b991ad82962faf639bcf90147467f1ff8c7e7fda26ecfbc4f99294a21"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.4/shell-acp-0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "8454d74c48c2444a5f6f03e234b45f1b1323b7f160e8b548515dd58d0c5c1fd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.4/shell-acp-0.0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e68fc2655f06311468f7e4dd59de67bb43503cf90155caf1a2ad21069c865798"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.4/shell-acp-0.0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "363e43d62a21a20dfd4e152cfe5f6dbabf027a98e90e86ebd22125ce6ff12846"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match "shell-acp started", shell_output("echo | #{bin}/shell-acp 2>&1")
  end
end
