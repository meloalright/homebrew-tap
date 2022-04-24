class Stroke < Formula
  desc "A MacOS command stroke tool written in Rust"
  homepage "https://github.com/meloalright/stroke"
  url "https://github.com/meloalright/stroke/releases/download/0.1.1/stroke.zip"
  sha256 "b35abe2f5d777704a35d3446131dd4421d64beec6778b7f60f34aa51aad36b2b"
  license "MIT"

  def install
    bin.install "stroke"
    system "#{bin}/stroke -V"
  end

  test do
    system "#{bin}/stroke -V"
  end
end
