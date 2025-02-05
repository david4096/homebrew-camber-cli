class Cambercli < Formula
  desc "CamberCLI - Command-line interface for Camber"
  homepage "https://camber-public-24132152.s3.us-east-2.amazonaws.com/cambercli/download/"
  if Hardware::CPU.arm?
    url "https://camber-public-24132152.s3.us-east-2.amazonaws.com/cambercli/download/cambercli_0.7.6-dev_Darwin_arm64.tar.gz"
    sha256 "4b9134efef17f5be2bf55ee37c92834a0a1956c70d2197091d05978e689b6f68"
  else
    url "https://camber-public-24132152.s3.us-east-2.amazonaws.com/cambercli/download/cambercli_0.7.6-dev_Darwin_x86_64.tar.gz"
    sha256 "997b7c759f5b4cf21560120f784520897cef2f857177ef674d3badf381219649"
  end  version "0.7.6-dev"
  

  def install
    tarball = Dir["#{cached_download}"].first
    system "tar", "-xzf", tarball
    bin.install "camber"
  end

  test do
    system "#{bin}/camber", "--version"
  end
end
