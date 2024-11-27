class Fubura < Formula
  desc "CLI for managing Step Function states with EventBridge Scheduler at once"
  homepage "https://github.com/riseshia/fubura"
  url "https://github.com/riseshia/fubura/archive/refs/tags/v0.1.12.tar.gz"
  sha256 "cb09885d47fb21921ba899532977d3cd7d218d159b2d46d57fa6cfe2a0fe6e43"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/fubura-0.1.11"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a9518ae5e02fdfe6e03e32a9667385b3f30675a11b5e842a60df7e2f069de9dd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1a25f5e747a1cc65f48cd3dfd2d3a0da2f3ad70f933f0b3a0214f1453be73e74"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fubura", "help"
  end
end
