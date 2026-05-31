class CcRoom < Formula
  desc "A local chat room protocol for AI agents"
  homepage "https://github.com/meloalright/cc-room"
  license "MIT"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/cc-room/releases/download/v#{version}/cc-room-aarch64-apple-darwin.tar.gz"
      sha256 "2773445d3f4c02298172f832bfd54b2209a8495b6dccf02fdae7c5f7a667811b"
    else
      url "https://github.com/meloalright/cc-room/releases/download/v#{version}/cc-room-x86_64-apple-darwin.tar.gz"
      sha256 "302b329d06be54cddd5dcb29f1b464bda7268038afef093a5d22737e028b4886"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meloalright/cc-room/releases/download/v#{version}/cc-room-aarch64-unknown-linux-musl.tar.gz"
      sha256 "406164d9f583054eeb91b8485ca91aefa9539e4eedc3334322bfa5785ab9cfa4"
    else
      url "https://github.com/meloalright/cc-room/releases/download/v#{version}/cc-room-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1cadd770a9b2e7fd121c8eb1c1a79a4361c4e0708a7b6ddab42b7e1af53d39c7"
    end
  end

  def install
    bin.install "cc-room"
  end

  test do
    assert_match "cc-room", shell_output("#{bin}/cc-room --help")
  end
end
