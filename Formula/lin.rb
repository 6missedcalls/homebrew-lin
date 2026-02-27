class Lin < Formula
  desc "Fast, terminal-native client for Linear"
  homepage "https://github.com/6missedcalls/lin-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/6missedcalls/lin-cli/releases/download/v0.1.0/lin-darwin-arm64.tar.gz"
      sha256 "37d86f31222b3d9c9d569fd282f157d362e85a472a1de4a91c5dcdff1581c1dd"
    else
      url "https://github.com/6missedcalls/lin-cli/releases/download/v0.1.0/lin-darwin-x86_64.tar.gz"
      sha256 "2ca6d02347b14ecb1b2f8276f6702f0e0180548c438c11d74af2e552c4d53c19"
    end
  end

  on_linux do
    url "https://github.com/6missedcalls/lin-cli/releases/download/v0.1.0/lin-linux-x86_64.tar.gz"
    sha256 "56a0e9d72d678a8d1c5e0e7308bd9067896673dee129540d60654eb95a04329b"
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match "lin 0.1.0", shell_output("#{bin}/lin --version")
  end
end
