class Lin < Formula
  desc "Fast, terminal-native client for Linear"
  homepage "https://github.com/6missedcalls/lin-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/6missedcalls/lin-cli/releases/download/v0.2.1/lin-darwin-arm64.tar.gz"
      sha256 "71b6f92f03cf0543c50398340691c766ce2a88dc47662fd893654f03fe90ce18"
    else
      url "https://github.com/6missedcalls/lin-cli/releases/download/v0.2.1/lin-darwin-x86_64.tar.gz"
      sha256 "5924ba0a3996fd071e99802cfc24fb394939ac9900a9ed562927ade0fe9386f7"
    end
  end

  on_linux do
    url "https://github.com/6missedcalls/lin-cli/releases/download/v0.2.1/lin-linux-x86_64.tar.gz"
    sha256 "09ffe528c4668dbcd8e4ebb25171277c1cf3ddc7b9c84234abbae1cb3abe7bd5"
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match "v0.2.1", shell_output("#{bin}/lin --version")
  end
end
