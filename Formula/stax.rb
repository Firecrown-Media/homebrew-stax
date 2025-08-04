class Stax < Formula
  desc "CLI tool for web development with DDEV and WordPress"
  homepage "https://github.com/Firecrown-Media/stax"
  version "0.1.0"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Firecrown-Media/stax/releases/download/v0.1.0/stax-darwin-amd64"
    sha256 "bd2c8e239234bda77ec4739b85565a8272cb0584b2f3af975c1e36d203eb56eb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Firecrown-Media/stax/releases/download/v0.1.0/stax-darwin-arm64"
    sha256 "4ee135e41a9d533d63c381bfbe81107b20b7ae443f8b381d0273815ea5510190"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Firecrown-Media/stax/releases/download/v0.1.0/stax-linux-amd64"
    sha256 "f3906897395963929af065bc67615f8303a9036db811b26c33ff053292c28759"
  end

  def install
    bin.install "stax-darwin-amd64" => "stax" if OS.mac? && Hardware::CPU.intel?
    bin.install "stax-darwin-arm64" => "stax" if OS.mac? && Hardware::CPU.arm?
    bin.install "stax-linux-amd64" => "stax" if OS.linux? && Hardware::CPU.intel?
  end

  test do
    system "#{bin}/stax", "--version"
  end
end
