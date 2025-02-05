class Cambercli < Formula
  desc "CamberCLI - Command-line interface for Camber"
  homepage "https://camber-public-24132152.s3.us-east-2.amazonaws.com/cambercli/download/"
  url "https://camber-public-24132152.s3.us-east-2.amazonaws.com/cambercli/download/cambercli_0.7.6-dev_Darwin_arm64.tar.gz"
  version "0.7.6-dev"
  sha256 "4b9134efef17f5be2bf55ee37c92834a0a1956c70d2197091d05978e689b6f68"

  def install
    system "tar", "-xzf", "cambercli_0.7.6-dev_Darwin_arm64.tar.gz"
    bin.install "camber"
  end

  test do
    system "#{bin}/camber", "--version"
  end
end
