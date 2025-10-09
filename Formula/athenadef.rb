class Athenadef < Formula
  desc "CLI for AWS Athena schema management"
  homepage "https://github.com/riseshia/athenadef"
  url "https://github.com/riseshia/athenadef/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "fa103fdf29b463e2e7c40f9be8d7ccbd2aa745da05c58d8d28bd4833ea89b9a5"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/athenadef-0.1.1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/athenadef", "help"
  end
end
