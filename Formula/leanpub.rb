# Written by bin/mobile-release in Leanpub's repository; don't edit by hand.
class Leanpub < Formula
  desc "Work with your Leanpub books from the command line"
  homepage "https://leanpub.com/help/cli"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://leanpub.com/downloads/cli/v0.1.1/leanpub-aarch64-apple-darwin.tar.gz"
      sha256 "02f85a08d069152cd22b6970983a2a81d45c2f4081935bf2ca3457f274d7469e"
    end
    on_intel do
      url "https://leanpub.com/downloads/cli/v0.1.1/leanpub-x86_64-apple-darwin.tar.gz"
      sha256 "9b2e4a4e92f71d38fa1ac8890fd3542c8dd8ad93639b3886cfe106e652f73c00"
    end
  end

  on_linux do
    on_arm do
      url "https://leanpub.com/downloads/cli/v0.1.1/leanpub-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6d66e3fd2170b34d759bb75e3aa7708d20310475f404a1e586565159beb2844e"
    end
    on_intel do
      url "https://leanpub.com/downloads/cli/v0.1.1/leanpub-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4c0f80e893d885030eeac9997d0ebc5f0c0071a1f830182e16b1f9c94e70dc25"
    end
  end

  def install
    bin.install "leanpub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leanpub --version")
  end
end
