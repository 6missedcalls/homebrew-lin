class Lin < Formula
  desc "Fast, terminal-native client for Linear"
  homepage "https://github.com/6missedcalls/lin-cli"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/6missedcalls/lin-cli/releases/download/v0.3.2/lin-darwin-arm64.tar.gz"
      sha256 "50ad7776a409269a8851f6137f69254ed80b12f587d3acd7104da620088ca872"
    else
      url "https://github.com/6missedcalls/lin-cli/releases/download/v0.3.2/lin-darwin-x86_64.tar.gz"
      sha256 "362fdd666eed3f71cc031125ddf258eb90cb6ec0919539d69683348d8712357e"
    end
  end

  on_linux do
    url "https://github.com/6missedcalls/lin-cli/releases/download/v0.3.2/lin-linux-x86_64.tar.gz"
    sha256 "bb2bce39d5c78f25d8b93449683acdd61159af807c4c258b130d29fe802d0fcb"
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match "v0.3.2", shell_output("#{bin}/lin --version")
  end
end
