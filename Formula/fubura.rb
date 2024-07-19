class Fubura < Formula
  desc "CLI for managing Step Function states with EventBridge Scheduler at once"
  homepage "https://github.com/riseshia/fubura"
  url "https://github.com/riseshia/fubura/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "319878a69dba7602fcfb43a57489f62170332a4a836c74cfa9d247776e633537"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/fubura-0.1.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "0fa667ac6d03b4acc305ef1a8c21b63fa7ec44f1842af9981772c65fd53d2b30"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "99e75086737c089fb3c45b1bf715989f05a873d9938ee5a7487d4d767403d173"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fubura", "help"
  end
end
