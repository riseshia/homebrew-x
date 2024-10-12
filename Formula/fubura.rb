class Fubura < Formula
  desc "CLI for managing Step Function states with EventBridge Scheduler at once"
  homepage "https://github.com/riseshia/fubura"
  url "https://github.com/riseshia/fubura/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "5929a51f7aef0c84b0ffa0dc196274332b50a76f192e46b834d7dcf80f36af0a"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/fubura-0.1.8"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "90a04b559cfbd6c28d7a337604dedb9d335e92cc1a2f8d3237bc7008183c9b2a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fad129fea15ec962a4ca44d7ee167d6f17836acc776359f20cb9083ceea58110"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fubura", "help"
  end
end
