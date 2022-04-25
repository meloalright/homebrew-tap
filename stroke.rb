class Stroke < Formula
  desc "A MacOS command stroke tool written in Rust"
  homepage "https://github.com/meloalright/stroke"
  url "https://github.com/meloalright/stroke/releases/download/0.1.2/stroke.zip"
  sha256 "cfb991af3fa6012fd59002a33077c6a1921721e4f9e2324c09e1897a2af07be3"
  license "MIT"

  def install
    bin.install "stroke"
    system "#{bin}/stroke -V"
  end

  test do
    system "#{bin}/stroke -V"
  end
end
