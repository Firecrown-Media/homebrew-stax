class Stax < Formula
  desc "CLI tool for web development with DDEV and WordPress"
  homepage "https://github.com/Firecrown-Media/stax"
  version "0.1.1"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Firecrown-Media/stax/releases/download/v0.1.1/stax-darwin-amd64"
    sha256 "bc1e0b277134ea97567fde6beb727b7a720c6f9c28d9e7e14e166cf999f2a899"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Firecrown-Media/stax/releases/download/v0.1.1/stax-darwin-arm64"
    sha256 "150e50793e1f9c5146fda460daaacb6b9762bfc02b187ca7d046dd04e754e400"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Firecrown-Media/stax/releases/download/v0.1.1/stax-linux-amd64"
    sha256 "5aeea3f5d4ed906d4c29ba170af973686828248ff10804190d4e2384bff1ebca"
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
