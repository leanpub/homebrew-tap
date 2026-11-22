# Written by bin/mobile-release in Leanpub's repository; don't edit by hand.
class Leanpub < Formula
  desc "Work with your Leanpub books from the command line"
  homepage "https://leanpub.com/help/cli"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://leanpub.com/downloads/cli/v0.1.2/leanpub-aarch64-apple-darwin.tar.gz"
      sha256 "acfcaba1a2ab0117e762ffd16e78c37e4d1ee621b971da753af189f191db8849"
    end
    on_intel do
      url "https://leanpub.com/downloads/cli/v0.1.2/leanpub-x86_64-apple-darwin.tar.gz"
      sha256 "7a90b949b83090733e4a7cab1cde8967d50bf72e12d8020761d8adaf1be64fa7"
    end
  end

  on_linux do
    on_arm do
      url "https://leanpub.com/downloads/cli/v0.1.2/leanpub-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6cb29b01fc523982f307649d2412e469c774661386d0ebc05c7b5de7db0fbcbc"
    end
    on_intel do
      url "https://leanpub.com/downloads/cli/v0.1.2/leanpub-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e431bdb66c99e17e9651ef36bc35951c33bc5068817de915725ebaa918b7a852"
    end
  end

  def install
    bin.install "leanpub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leanpub --version")
  end
end
