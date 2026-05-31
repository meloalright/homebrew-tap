class CcRoom < Formula
  desc "A local chat room protocol for AI agents"
  homepage "https://github.com/meloalright/cc-room"
  license "MIT"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/cc-room/releases/download/v#{version}/cc-room-aarch64-apple-darwin.tar.gz"
      sha256 "41d723404e1822075c83a152160081db7a996e0d0a88570dba1f6daa8892b284"
    else
      url "https://github.com/meloalright/cc-room/releases/download/v#{version}/cc-room-x86_64-apple-darwin.tar.gz"
      sha256 "b60287f61d06240ba703b77c6622e6437787702d0c0a1bc9a56d09363a2453c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/cc-room/releases/download/v#{version}/cc-room-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e952432cf84400f4ca8e3e7a8f6ad1967d8e00ff558067228745c6e1f4273e55"
    else
      url "https://github.com/meloalright/cc-room/releases/download/v#{version}/cc-room-x86_64-unknown-linux-musl.tar.gz"
      sha256 "875e2d2efabfa02166399b28f1b9d24a94181b0e3116625d27327e4e1b536ffa"
    end
  end

  def install
    bin.install "cc-room"
  end

  test do
    assert_match "cc-room", shell_output("#{bin}/cc-room --help")
  end
end
