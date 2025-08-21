class ChipTool < Formula
  desc "Matter controller CLI tool from connectedhomeip"
  homepage "https://github.com/project-chip/connectedhomeip"
  url "https://github.com/project-chip/connectedhomeip.git", :using => :git, :tag => "v1.4.2.0"
  version "v1.4.2.0"
  depends_on "python@3.11"
  depends_on "ninja"
  depends_on "llvm"

  def install
    system "scripts/activate.sh"
    system "./scripts/examples/gn_build_example.sh", "examples/chip-tool", "out/chip-tool"
    bin.install "out/chip-tool/chip-tool"
  end

  test do
    system "#{bin}/chip-tool", "pairing", "onnetwork", "1", "20202021" 
  end
end
