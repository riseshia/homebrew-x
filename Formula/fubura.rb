class Fubura < Formula
  desc "CLI for managing Step Function states with EventBridge Scheduler at once"
  homepage "https://github.com/riseshia/fubura"
  url "https://github.com/riseshia/fubura/archive/refs/tags/v0.1.12.tar.gz"
  sha256 "cb09885d47fb21921ba899532977d3cd7d218d159b2d46d57fa6cfe2a0fe6e43"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/fubura-0.1.12"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "998f7eb7b5e312b3341fba3a8212cd1084fbf95722fa9f82179af801c8494c26"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8a8cc43721ed49496b356b695e91913b8917eed9715c7830f17c8fb756de3025"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fubura", "help"
  end
end
