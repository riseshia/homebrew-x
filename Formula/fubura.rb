class Fubura < Formula
  desc "CLI for managing Step Function states with EventBridge Scheduler at once"
  homepage "https://github.com/riseshia/fubura"
  url "https://github.com/riseshia/fubura/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "f3ffeda9ae668e7097f0c701c1b1d02120e2caaf8c54d6135f7938001876f6e8"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/fubura-0.1.5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "288e9107cc94e0714c187a9a674b2a887f73ad13b6daeb726fcd6daa7c6eff00"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fe408782863bddfb9ca643fb091b3467ba36c057557851b0f930b7f0fa33f846"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fubura", "help"
  end
end
