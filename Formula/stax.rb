class Stax < Formula
  desc "CLI tool for web development with DDEV and WordPress"
  homepage "https://github.com/Firecrown-Media/stax"
  version "v1.0.4"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Firecrown-Media/stax/releases/download/vv1.0.4/stax-darwin-amd64"
    sha256 "3f6a2fc819f793d2be2581aee865575c3eafa8ef9116063a4f31035c1d1f6c1a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Firecrown-Media/stax/releases/download/vv1.0.4/stax-darwin-arm64"
    sha256 "44e048bf2c3545fc7b4f5d8d6624165cc147ce97fef5fa5bf7cd0ee129cc2012"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Firecrown-Media/stax/releases/download/vv1.0.4/stax-linux-amd64"
    sha256 "f669452ce423a80e5e098f6ae10ce0c5c9a61ac2164875e8025f900e49bf6eb0"
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
