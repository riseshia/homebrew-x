class Fubura < Formula
  desc "CLI for managing Step Function states with EventBridge Scheduler at once"
  homepage "https://github.com/riseshia/fubura"
  url "https://github.com/riseshia/fubura/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "c88604ee6e9d4b009d31b970cac276a0e67c5fef912baa748a4f745364f8f16e"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/fubura-0.1.9"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ac4fd364e176cc9e9b6c53183cbd46df5a43904eaf179b961b851a0d2578ef5c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1ca592660692f6ef8c1cf5fcc1b26bd616bf7dfb78d8895a48143317bc12cb0f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fubura", "help"
  end
end
