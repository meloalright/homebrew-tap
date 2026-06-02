class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.6"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.6/shell-acp-0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "ac122568564100555d714fda776265be9d8ff823ec25206e5ebe203856088e01"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.6/shell-acp-0.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "2fe4b334e88d2e4da4330a2bf70d4ac80411298643cbe759015c05e052674870"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.6/shell-acp-0.0.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53ba81d965bf043fd8be0eeefc1c8d801b442dcb6e4cf4c3644349b20e8165ae"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.6/shell-acp-0.0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bddf3da7edfba46fb7f4aa2461429231ec7c0082e86c9af05d9fd7c3ce7f750"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shell-acp --version")
  end
end
