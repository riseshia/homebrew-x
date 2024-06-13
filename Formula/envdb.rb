class Envdb < Formula
  desc "Manager to handle .env file as DB"
  homepage "https://github.com/riseshia/envdb"
  url "https://github.com/riseshia/envdb/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "8c2b33df9f5ccf0b077b796dd1166c9ebfdbde1dcc8ba131d3d900254b258ecb"
  license "MIT"

  bottle do
    sha256 cellar: :any,                 ventura:        "1242ba844f8dd5fe9d7e1a981a5b2570f135d9c379fdf89b7e7dd5e14a281d7f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "95bd0e0bb8ed5d17049c4deca51d4c33112f2dd6852cdb5df86254823126225c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/envdb", "help"
  end
end
