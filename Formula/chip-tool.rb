class ChipTool < Formula
  desc "Matter controller CLI tool from connectedhomeip"
  homepage "https://github.com/project-chip/connectedhomeip"
  url "https://github.com/Z6543/homebrew-chip-tool/releases/download/v1.4.2.0/chip-tool-macos-latest-arm64"
  version "v1.4.2.0"
  sha256 "89aa65aa0ba78d488652c21d9ee7bb7ba2ee8669c2e9765bb7946d81892924c3" # Replace with actual sha256 if available

  def install
    mv "chip-tool-macos-latest-arm64", "chip-tool"
    bin.install "chip-tool"
  end

  test do
    system "#{bin}/chip-tool", "pairing", "onnetwork", "1", "20202021"
  end
end
