class Stax < Formula
  desc "CLI tool for web development with DDEV and WordPress"
  homepage "https://github.com/Firecrown-Media/stax"
  version "2.14.1"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Firecrown-Media/stax/releases/download/v2.14.1/stax-darwin-amd64"
    sha256 "36de5acc9e83b919f54ed1564e49940e6b29847f4d2d9dc3d4ee8a8daa932287"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Firecrown-Media/stax/releases/download/v2.14.1/stax-darwin-arm64"
    sha256 "0bbff57769090bbb3b3469af72d1b5756f2bc780ace4269dce45491c397e0762"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Firecrown-Media/stax/releases/download/v2.14.1/stax-linux-amd64"
    sha256 "e23053f1813b51af5bc3f2bf99a26314bd0ce859962505bc2b41e90f1500d35c"
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
