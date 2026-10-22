# Written by bin/mobile-release in Leanpub's repository; don't edit by hand.
class Leanpub < Formula
  desc "Work with your Leanpub books from the command line"
  homepage "https://leanpub.com/help/cli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://leanpub.com/downloads/cli/v0.1.0/leanpub-aarch64-apple-darwin.tar.gz"
      sha256 "d4b5061c61580d257387b0f23581f37b8dd1524188dc8bdb4d5abe252535e305"
    end
    on_intel do
      url "https://leanpub.com/downloads/cli/v0.1.0/leanpub-x86_64-apple-darwin.tar.gz"
      sha256 "a1bb9eb47bf189cc89887143f77042b266e38534b46b7d50b46f7b5fc3016600"
    end
  end

  on_linux do
    on_arm do
      url "https://leanpub.com/downloads/cli/v0.1.0/leanpub-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eb28d8dd546f4194e397cfca7c6ba083a5a3d376a91fdfacd1ee400fc282d90d"
    end
    on_intel do
      url "https://leanpub.com/downloads/cli/v0.1.0/leanpub-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f4c3e866b87671b2b6fe2ffc7658190a163fdbe4bd6acd5ef25fc355c70c1582"
    end
  end

  def install
    bin.install "leanpub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leanpub --version")
  end
end
