class Envdb < Formula
  desc "Manager to handle .env file as DB"
  homepage "https://github.com/riseshia/envdb"
  url "https://github.com/riseshia/envdb/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "8c2b33df9f5ccf0b077b796dd1166c9ebfdbde1dcc8ba131d3d900254b258ecb"
  license "MIT"

  bottle do
    root_url "https://github.com/riseshia/homebrew-x/releases/download/envdb-0.1.5"
    rebuild 1
    sha256 cellar: :any_skip_relocation, ventura:      "1242ba844f8dd5fe9d7e1a981a5b2570f135d9c379fdf89b7e7dd5e14a281d7f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0b89e0d5097afae427a668080ee337b0ddedd75f8a0791eec556cbe1fec82983"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/envdb", "help"
  end
end
