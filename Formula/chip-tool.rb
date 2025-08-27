class ChipTool < Formula
  desc "Matter controller CLI tool from connectedhomeip"
  homepage "https://github.com/project-chip/connectedhomeip"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Z6543/homebrew-chip-tool/releases/download/v1.4.2.0/chip-tool-macos-latest-arm64"
      sha256 "89aa65aa0ba78d488652c21d9ee7bb7ba2ee8669c2e9765bb7946d81892924c3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/user-attachments/files/22002833/chip-tool-macOS-universal.bin.zip"
      sha256 "1257ef2de40b9def4f3c959987ab2b8c1f95cba00de82c4c866069e0c08493dc"
    end
  end

  version "v1.4.2.0"

  def install
    if Hardware::CPU.intel?
      system "unzip", "chip-tool-macOS-universal.bin.zip"
      mv "chip-tool-macOS-universal.bin", "chip-tool"
      bin.install "chip-tool-macOS-universal.bin"
    else
      mv "chip-tool-macos-latest-arm64", "chip-tool"
      bin.install "chip-tool-macos-latest-arm64"
    end
  end

  test do
    system "#{bin}/chip-tool", "pairing", "onnetwork", "1", "20202021"
  end
end
