class Stroke < Formula
  desc "A MacOS command stroke tool written in Rust"
  homepage "https://github.com/meloalright/stroke"
  url "https://github.com/meloalright/stroke/releases/download/0.1.3-alpha/stroke.zip"
  sha256 "bed44f739420ff161717dae6898044c74ec21ed4f6d65f8f9e054cc5c2cdf842"
  license "MIT"

  def install
    bin.install "stroke"
    system "#{bin}/stroke -V"
  end

  test do
    system "#{bin}/stroke -V"
  end
end
