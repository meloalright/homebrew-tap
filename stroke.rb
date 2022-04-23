class Stroke < Formula
  desc "A MacOS command stroke tool written in Rust"
  homepage "https://github.com/meloalright/stroke"
  url "https://github.com/meloalright/stroke/releases/download/0.1.0/stroke.zip"
  sha256 "d0b2adc9700db9417548441c3958d6513bcb5d6117bee1a1b6a8bdb02afed8bd"
  license "MIT"

  def install
    bin.install "stroke"
  end

  test do
    system "#{bin}/stroke -V"
  end
end
