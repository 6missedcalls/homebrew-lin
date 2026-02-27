class Lin < Formula
  desc "Fast, terminal-native client for Linear"
  homepage "https://github.com/6missedcalls/lin-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/6missedcalls/lin-cli/releases/download/v0.2.0/lin-darwin-arm64.tar.gz"
      sha256 "bc06a3fe0013df3b54981a12ef5340f6d156e356ee2a972b06ce10da46513db9"
    else
      url "https://github.com/6missedcalls/lin-cli/releases/download/v0.2.0/lin-darwin-x86_64.tar.gz"
      sha256 "111bc259a5f38efdf864aa3fa6d49f56c85285af7baa875cc57aff7e48520d9e"
    end
  end

  on_linux do
    url "https://github.com/6missedcalls/lin-cli/releases/download/v0.2.0/lin-linux-x86_64.tar.gz"
    sha256 "a78f74180d775d6d09de2ff87e3db28247805a8835eb5afd26169d9864a7d8dd"
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match "v0.2.0", shell_output("#{bin}/lin --version")
  end
end
