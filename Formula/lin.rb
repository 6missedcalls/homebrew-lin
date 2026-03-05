class Lin < Formula
  desc "Fast, terminal-native client for Linear"
  homepage "https://github.com/6missedcalls/lin-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/6missedcalls/lin-cli/releases/download/v0.3.1/lin-darwin-arm64.tar.gz"
      sha256 "3928dff45e959c196e579cf3adb582c44e357a6ed84af57ba9fa93a034b3b38e"
    else
      url "https://github.com/6missedcalls/lin-cli/releases/download/v0.3.1/lin-darwin-x86_64.tar.gz"
      sha256 "1ff3af912f9b2e28025705ef3aa3a8fdf6bcf465852cbebb8811263f1b2b8dfb"
    end
  end

  on_linux do
    url "https://github.com/6missedcalls/lin-cli/releases/download/v0.3.1/lin-linux-x86_64.tar.gz"
    sha256 "f655fa43ad0d010f99ec7b32e5b7025c753760ea4934355b54a8588bdaf7602f"
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match "v0.3.1", shell_output("#{bin}/lin --version")
  end
end
