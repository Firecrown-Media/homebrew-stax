class Stax < Formula
  desc "CLI tool for web development with DDEV and WordPress"
  homepage "https://github.com/Firecrown-Media/stax"
  version "1.0.9"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Firecrown-Media/stax/releases/download/v1.0.9/stax-darwin-amd64"
    sha256 "8023038879ab2b744b4ca6f17b9d8888e57419b36b42559580653d7bf16342b8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Firecrown-Media/stax/releases/download/v1.0.9/stax-darwin-arm64"
    sha256 "7888c730df7123b50b57cbcf72e95667a68a41d7d50813ace824384f31c7debf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Firecrown-Media/stax/releases/download/v1.0.9/stax-linux-amd64"
    sha256 "eb5bc3e5ba7f6a86c8286e3c8a4dd4ea110a219dd9419917527b804e81c119dd"
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
