class Athenadef < Formula
  desc "CLI for AWS Athena schema management"
  homepage "https://github.com/riseshia/athenadef"
  url "https://github.com/riseshia/athenadef/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7cbe871f2875a8254e5666e6f35222b8720bef1e54f7d1d9086b19a5eb910911"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/athenadef-0.1.0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/athenadef", "help"
  end
end
