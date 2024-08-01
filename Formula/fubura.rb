class Fubura < Formula
  desc "CLI for managing Step Function states with EventBridge Scheduler at once"
  homepage "https://github.com/riseshia/fubura"
  url "https://github.com/riseshia/fubura/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "e0062f927373b61ab2d167950c3c85b00fc85f20cb7bc8d1821a1e6492d1e175"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/fubura-0.1.3"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "466d11c5c7e0ed7c2872e5d730dfa7579d9063ead3672bec13d36c166228a517"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a398fc74d2798716e0088da0daef5e9ca3f574fbf39caa9189633b12e5028ade"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fubura", "help"
  end
end
