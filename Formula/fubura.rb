class Fubura < Formula
  desc "CLI for managing Step Function states with EventBridge Scheduler at once"
  homepage "https://github.com/riseshia/fubura"
  url "https://github.com/riseshia/fubura/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "5929a51f7aef0c84b0ffa0dc196274332b50a76f192e46b834d7dcf80f36af0a"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/fubura-0.1.7"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "1db47f9b950a55e041b21f6905cead4e35d626751c5b3a611d423bbb2ad30161"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ff706d0b6943374a392d94c1f9364f4b13a81847c4acc0592fa197d7c87a042f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fubura", "help"
  end
end
