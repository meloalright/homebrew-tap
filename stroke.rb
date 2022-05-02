class Stroke < Formula
  desc "A MacOS command stroke tool written in Rust"
  homepage "https://github.com/meloalright/stroke"
  url "https://github.com/meloalright/stroke/releases/download/0.1.5/stroke-macos-210d1f0.tar.gz"
  sha256 "adddbab0f142a575b9572bf9fe059231b1b8129e8845ea5e449ec30bf8201292"
  license "MIT"

  def install
    bin.install "stroke"
    system "#{bin}/stroke -V"
  end

  test do
    system "#{bin}/stroke -V"
  end
end
