class Envdb < Formula
  desc "Manager to handle .env file as DB"
  homepage "https://github.com/riseshia/envdb"
  url "https://github.com/riseshia/envdb/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "8c2b33df9f5ccf0b077b796dd1166c9ebfdbde1dcc8ba131d3d900254b258ecb"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/envdb-0.1.5"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d459e74efea1bd0d33761bdf8ba251a485231f8b78586b4e733209c7bc4ec26f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "23739b60902a1c2e29d2469ca74ce428bad4fdb2182e3be6ce029c737d487d3d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/envdb", "help"
  end
end
