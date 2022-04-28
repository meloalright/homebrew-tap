class Stroke < Formula
  desc "A MacOS command stroke tool written in Rust"
  homepage "https://github.com/meloalright/stroke"
  url "https://github.com/meloalright/stroke/releases/download/0.1.3/stroke.zip"
  sha256 "8aa11c7751954b25719d17ca5c7ed05c78a5bad89aefe6c6c501dcf578e98701"
  license "MIT"

  def install
    bin.install "stroke"
    system "#{bin}/stroke -V"
  end

  test do
    system "#{bin}/stroke -V"
  end
end
