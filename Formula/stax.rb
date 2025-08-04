class Stax < Formula
  desc "CLI tool for web development with DDEV and WordPress"
  homepage "https://github.com/Firecrown-Media/stax"
  version "0.1.0"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Firecrown-Media/stax/releases/download/v0.1.0/stax-darwin-amd64"
    sha256 "f12d365cb031fa36e22acb471b5339994b5de5df05287005a948ba499d9420ca"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Firecrown-Media/stax/releases/download/v0.1.0/stax-darwin-arm64"
    sha256 "582e6a29b25ddc7795cd25d9f83526d0ba41e1f23ae9063babadfcfeccfad8a0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Firecrown-Media/stax/releases/download/v0.1.0/stax-linux-amd64"
    sha256 "230e50baee9bfea31d1076bcfc69efc8b541adece0fa6e021682c935a8b6d904"
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
