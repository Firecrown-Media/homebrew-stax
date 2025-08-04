class Stax < Formula
  desc "CLI tool for web development with DDEV and WordPress"
  homepage "https://github.com/Firecrown-Media/stax"
  version "0.0.1"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Firecrown-Media/stax/releases/download/v0.0.1/stax-darwin-amd64"
    sha256 "038b94782cdbecdcbb3f04b4244c9cb23e0768e366276fcd1417140c8035c68a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Firecrown-Media/stax/releases/download/v0.0.1/stax-darwin-arm64"
    sha256 "12e823373dcbc140d80a0bc68e1b8638440a39df03fb3f68a918587452fdbabd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Firecrown-Media/stax/releases/download/v0.0.1/stax-linux-amd64"
    sha256 "3769c81e65f90b89ae14b5764a5fb0354497103c0a625167ccff9b53081b0ff0"
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
