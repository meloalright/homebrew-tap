class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.3"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.3/shell-acp-0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "16b17dec867366b420fd15965715fcd51bd1d9d5b149eaf49a95e37de6b0beb2"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.3/shell-acp-0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "2a926af57b79ffe83afe6bd8ed2b679b9b57d7e329ed61f787d88a090c796562"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.3/shell-acp-0.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "37642ad74ce550a26940222da077f36cf80d72c996775f2b52c72f470d7bb250"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.3/shell-acp-0.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "746ad3ae1925a5432c745a7ed3e2cba6f6baa7ab8663d4e9f2898d9decadce38"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match "shell-acp started", shell_output("echo | #{bin}/shell-acp 2>&1")
  end
end
