class Lin < Formula
  desc "Fast, terminal-native client for Linear"
  homepage "https://github.com/6missedcalls/lin-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/6missedcalls/lin-cli/releases/download/v0.3.0/lin-darwin-arm64.tar.gz"
      sha256 "c59f8aed9ee0b80d62ba9a43395233897dd36acb43a7684fa77c93b68a9ff2b6"
    else
      url "https://github.com/6missedcalls/lin-cli/releases/download/v0.3.0/lin-darwin-x86_64.tar.gz"
      sha256 "f897f0abfdbeffe2cd738b305463bf95229fae6f9243aa3922a120551679b0af"
    end
  end

  on_linux do
    url "https://github.com/6missedcalls/lin-cli/releases/download/v0.3.0/lin-linux-x86_64.tar.gz"
    sha256 "a96d1bf092617c3034a06b110f57a84b469ade6f497e331ae65c8045e8033e0c"
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match "v0.3.0", shell_output("#{bin}/lin --version")
  end
end
