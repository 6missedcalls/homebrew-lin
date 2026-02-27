class Lin < Formula
  desc "Fast, terminal-native client for Linear"
  homepage "https://github.com/6missedcalls/lin-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/6missedcalls/lin-cli/releases/download/v0.2.2/lin-darwin-arm64.tar.gz"
      sha256 "e86bd0b855d71d1c12ed5df90d6f5a483a62ed118193d8a8a37244e770df4d04"
    else
      url "https://github.com/6missedcalls/lin-cli/releases/download/v0.2.2/lin-darwin-x86_64.tar.gz"
      sha256 "46c77cbd04a7f212a529fd7ccea873e4daf684fbd4b7bfdc772ad56d97df6d26"
    end
  end

  on_linux do
    url "https://github.com/6missedcalls/lin-cli/releases/download/v0.2.2/lin-linux-x86_64.tar.gz"
    sha256 "ecaf3b999c9826a18bb35fccb6faf3f4ba61dc1851c25dc8a9fabd962b7a63a7"
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match "v0.2.2", shell_output("#{bin}/lin --version")
  end
end
