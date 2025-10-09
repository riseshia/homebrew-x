class Athenadef < Formula
  desc "CLI for AWS Athena schema management"
  homepage "https://github.com/riseshia/athenadef"
  url "https://github.com/riseshia/athenadef/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "fa103fdf29b463e2e7c40f9be8d7ccbd2aa745da05c58d8d28bd4833ea89b9a5"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/athenadef-0.1.1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "299f72acb6b796079a106093c344ede7f3a62907bde2b347d1194be2cda36f3e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "38a57ec4e68d6acb71d4019b4500adf9eebc5e624607d52e3bae2caa9529cb10"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/athenadef", "help"
  end
end
