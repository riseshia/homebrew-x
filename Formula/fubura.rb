class Fubura < Formula
  desc "CLI for managing Step Function states with EventBridge Scheduler at once"
  homepage "https://github.com/riseshia/fubura"
  url "https://github.com/riseshia/fubura/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "644b02211b4a73d912e1c2c3043fdf9606c4a9bd0e169679412f5552739d0dbb"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/fubura-0.1.6"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "2393ca45def60500cb7c229494327b475c1fb0c57016fc857ec93889fb865588"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "568a05be6c7ac288fa0bfdfe9aea251ec9d4e0315a6bbe1210110bf7f4c505ed"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fubura", "help"
  end
end
