class Fubura < Formula
  desc "CLI for managing Step Function states with EventBridge Scheduler at once"
  homepage "https://github.com/riseshia/fubura"
  url "https://github.com/riseshia/fubura/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "8930c0a91013d10913dba0fdc88bea0a281b462ffd50d0503b9904ff004bd92f"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/fubura-0.1.1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "2939df6f9e5766a86e269c6cc578f1b5fa522fe78071104c229fcd16bc1585fe"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ae2fc170ccb879af04bb6c5f099a5fb698cc7102dc04adf7571d059953603a0a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fubura", "help"
  end
end
