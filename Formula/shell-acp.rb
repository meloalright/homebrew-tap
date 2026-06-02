class ShellAcp < Formula
  desc "Shell exposed as an Agent Client Protocol (ACP) agent"
  homepage "https://github.com/meloalright/shell-acp"
  version "0.0.8"

  on_macos do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.8/shell-acp-0.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "f5fe825d8d89671a83d656bb840c6808b9605bf238a2ba308f9714a530b88651"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.8/shell-acp-0.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "37b5483507d7bb4bb41584dbcf27952fd9a6a8718b7055d8a52af799a5d5f6f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.8/shell-acp-0.0.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "547ec2fbbbb93767339235d5b7cda6b5d5de81ecfa0891e5cbf6a1450d989607"
    end
    on_intel do
      url "https://github.com/meloalright/shell-acp/releases/download/v0.0.8/shell-acp-0.0.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c74c3f31afd61ea307c717422040f57aa30db928d2ce99ed609a8453b48ff4d7"
    end
  end

  def install
    bin.install "shell-acp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shell-acp --version")
  end
end
