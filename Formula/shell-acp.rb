class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.9"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.9/shell-acp-0.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "0b22f97db88707b598b4b7e9ed3ec9dc7127fb3875737ba354a38498da3751b5"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.9/shell-acp-0.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "cd6aa5577d88df5a2557af60e379adb487b0e0b04582c20065b68baf60ac18af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.9/shell-acp-0.0.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "843b5c54bb65d745afcc6ed28831f4d185bd0726beb563f66d3cfb752c62122f"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.9/shell-acp-0.0.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ada9142825230bc7860def63d5819605610ff431bbbc222d338b17845dff8948"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shell-acp --version")
  end
end
