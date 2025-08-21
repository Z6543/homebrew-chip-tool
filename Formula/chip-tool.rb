
class ChipTool < Formula
  desc "Matter controller CLI tool from connectedhomeip"
  homepage "https://github.com/project-chip/connectedhomeip"
  url "https://github.com/Z6543/homebrew-chip-tool/releases/tag/v1.4.2.0"
  version "v1.4.2.0"
  sha256 "f0ee29728a7b14df882169a75fd667cebc248a861e917088c9be957b67517436" # Replace with actual sha256 if available

  def install
    bin.install "chip-tool"
  end

  test do
    system "#{bin}/chip-tool", "pairing", "onnetwork", "1", "20202021"
  end
end
