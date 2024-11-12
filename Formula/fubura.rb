class Fubura < Formula
  desc "CLI for managing Step Function states with EventBridge Scheduler at once"
  homepage "https://github.com/riseshia/fubura"
  url "https://github.com/riseshia/fubura/archive/refs/tags/v0.1.11.tar.gz"
  sha256 "252873493830ac56808d02a61d41e4cd0a82f5182a35a7221fe63368f9a9b6c1"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/fubura-0.1.10"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3d156e42c7a7b52231087324afeb954355edd57f1e0423b64ee4f71d7bf1b8ff"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8d7e1918c152fc51db91e4566b53b00b69dc7c8ef2cb446faeaeafa494addce0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fubura", "help"
  end
end
