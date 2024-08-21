class Fubura < Formula
  desc "CLI for managing Step Function states with EventBridge Scheduler at once"
  homepage "https://github.com/riseshia/fubura"
  url "https://github.com/riseshia/fubura/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "47901fdfc2263d9b7a8d67045373e45f5aad4950d31b808e0814b1291a0f2926"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/fubura-0.1.4"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "9446defd7ae8670a8a906f055a5d56d4f0e2f2907d37c2fa65f1f273d5b42217"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "53b49db1c14d827c78302f266df6224547cba16c0c5d94a4bcad954f4dd66121"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fubura", "help"
  end
end
