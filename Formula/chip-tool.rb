
class ChipTool < Formula
  desc "Matter controller CLI tool from connectedhomeip"
  homepage "https://github.com/project-chip/connectedhomeip"
  url "https://github.com/Z6543/homebrew-chip-tool/releases/download/v1.4.2.0/chip-tool"
  version "v1.4.2.0"
  sha256 "a2415a02ecc0fea78a32f701c25cecfb313c06defd0a693e26a3afa57420721a" # Replace with actual sha256 if available

  def install
    bin.install "chip-tool"
  end

  test do
    system "#{bin}/chip-tool", "pairing", "onnetwork", "1", "20202021"
  end
end
