class Fubura < Formula
  desc "CLI for managing Step Function states with EventBridge Scheduler at once"
  homepage "https://github.com/riseshia/fubura"
  url "https://github.com/riseshia/fubura/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "893fef231b0559ecbe0e2090970f549c2c1ed124aad3eea11fd463c849e31088"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/fubura-0.1.2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "c37194062e51bf66e4ef799fa3772fb4e1a01f1e20bdb374c7608f0b30b1c2cf"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4f50ad6877d91f919c73f7019ac09bc07011a6b3c5089c0307e73fcb484c78eb"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fubura", "help"
  end
end
