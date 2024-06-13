class Envdb < Formula
  desc "Manipulate .env file as DB"
  homepage "https://github.com/riseshia/envdb"
  url "https://github.com/riseshia/envdb/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "8c2b33df9f5ccf0b077b796dd1166c9ebfdbde1dcc8ba131d3d900254b258ecb"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/envdb", "help"
  end
end
